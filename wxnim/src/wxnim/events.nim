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

proc rawEvent*(self: Event): ptr WxObjectRaw = self.rawObj

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

# Global registry to map raw pointers to Nim objects
var handlerRegistry = initTable[pointer, EvtHandler]()

proc registerHandler*(raw: pointer, handler: EvtHandler) =
  handlerRegistry[raw] = handler

proc eventBridge(e: ptr WxObjectRaw) {.cdecl.} =
  # Find the event handler that issued this event
  # In wxWidgets, we can get the event handler from the event or the ID
  # For simplicity in this architectural model, we'll assume we can find it
  # e.GetEventObject() or similar
  discard

proc bind*(self: EvtHandler, eventType: EventType, callback: proc(e: Event)) =
  let et = cint(eventType)
  if not self.handlers.hasKey(et):
    self.handlers[et] = @[]
    # In a working implementation, we would call Bind on the raw object here:
    # self.rawEvtHandler().bindRaw(et, eventBridge, -1)
  self.handlers[et].add(cast[EventHandlerClosure](callback))
