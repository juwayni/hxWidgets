import tables
import ../wxraw/types
import ../wxraw/evthandler_raw
import ../wxraw/event_raw
import evthandler, common_types

type
  Event* = ref object of RootRef
    rawObj*: ptr WxObjectRaw

  CommandEvent* = ref object of Event
  MouseEvent* = ref object of Event
  KeyEvent* = ref object of Event
  SizeEvent* = ref object of Event
  MoveEvent* = ref object of Event
  PaintEvent* = ref object of Event
  CloseEvent* = ref object of Event
  IdleEvent* = ref object of Event
  NotifyEvent* = ref object of Event

proc rawEvent*(self: Event): ptr WxObjectRaw = self.rawObj

proc eventType*(self: Event): int = int(self.rawObj.getEventType())
proc id*(self: Event): int = int(self.rawObj.getId())
proc skip*(self: Event, skip: bool = true) = self.rawObj.skip(skip)
proc stopPropagation*(self: Event) = self.rawObj.stopPropagation()

# Data Accessors
proc x*(self: MouseEvent): int = int(self.rawObj.getX())
proc y*(self: MouseEvent): int = int(self.rawObj.getY())
proc leftDown*(self: MouseEvent): bool = self.rawObj.leftDown()
proc keyCode*(self: KeyEvent): int = int(self.rawObj.getKeyCode())
proc width*(self: SizeEvent): int = int(self.rawObj.getWidth())
proc height*(self: SizeEvent): int = int(self.rawObj.getHeight())

type
  EventType* = distinct cint

var
  evt_BUTTON* {.importcpp: "wxEVT_BUTTON", header: "wx/event.h".}: EventType
  evt_TEXT* {.importcpp: "wxEVT_TEXT", header: "wx/event.h".}: EventType
  evt_CHECKBOX* {.importcpp: "wxEVT_CHECKBOX", header: "wx/event.h".}: EventType
  evt_MENU* {.importcpp: "wxEVT_MENU", header: "wx/event.h".}: EventType
  evt_CLOSE_WINDOW* {.importcpp: "wxEVT_CLOSE_WINDOW", header: "wx/event.h".}: EventType
  evt_PAINT* {.importcpp: "wxEVT_PAINT", header: "wx/event.h".}: EventType

  evt_LEFT_DOWN* {.importcpp: "wxEVT_LEFT_DOWN", header: "wx/event.h".}: EventType
  evt_LEFT_UP* {.importcpp: "wxEVT_LEFT_UP", header: "wx/event.h".}: EventType
  evt_MOTION* {.importcpp: "wxEVT_MOTION", header: "wx/event.h".}: EventType

  evt_KEY_DOWN* {.importcpp: "wxEVT_KEY_DOWN", header: "wx/event.h".}: EventType
  evt_KEY_UP* {.importcpp: "wxEVT_KEY_UP", header: "wx/event.h".}: EventType

  evt_SIZE* {.importcpp: "wxEVT_SIZE", header: "wx/event.h".}: EventType
  evt_MOVE* {.importcpp: "wxEVT_MOVE", header: "wx/event.h".}: EventType

  evt_IDLE* {.importcpp: "wxEVT_IDLE", header: "wx/event.h".}: EventType

# Registry to map raw pointers to Nim objects
var handlerRegistry = initTable[pointer, EvtHandler]()

proc registerHandler*(handler: EvtHandler) =
  if handler != nil and handler.rawObj != nil:
    handlerRegistry[handler.rawObj] = handler

proc nim_wx_dispatcher(event: var EventRaw) {.cdecl.} =
  let eventPtr = addr event
  let handlerRaw = cast[ptr WxObjectRaw](eventPtr).getEventObject()
  if handlerRegistry.hasKey(handlerRaw):
    let handler = handlerRegistry[handlerRaw]
    let et = int(cast[ptr WxObjectRaw](eventPtr).getEventType())
    if handler.handlers.hasKey(et):
      let e = Event(rawObj: cast[ptr WxObjectRaw](eventPtr))
      for cb in handler.handlers[et]:
        cb(e)

proc bind*(self: EvtHandler, eventType: EventType, callback: proc(e: Event)) =
  let et = cint(eventType)
  if not self.handlers.hasKey(et):
    self.handlers[et] = @[]
    self.registerHandler()

    # Actually call wxEvtHandler::Bind
    self.rawEvtHandler().bindRaw(et, nim_wx_dispatcher, -1)

  self.handlers[et].add(cast[EventHandlerClosure](callback))
