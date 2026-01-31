import tables
import ../wxraw/types
import ../wxraw/evthandler_raw
import evthandler, common_types

type
  Event* = ref object of RootRef
    rawObj*: ptr WxObjectRaw

  CommandEvent* = ref object of Event

proc rawEvent*(self: Event): ptr WxObjectRaw = self.rawObj

type
  EventType* = distinct cint

# Common event types - these should be clong/cint depending on wx version
var
  evt_BUTTON* {.importcpp: "wxEVT_BUTTON", header: "wx/event.h".}: EventType
  evt_TEXT* {.importcpp: "wxEVT_TEXT", header: "wx/event.h".}: EventType
  evt_CHECKBOX* {.importcpp: "wxEVT_CHECKBOX", header: "wx/event.h".}: EventType
  evt_MENU* {.importcpp: "wxEVT_MENU", header: "wx/event.h".}: EventType
  evt_CLOSE_WINDOW* {.importcpp: "wxEVT_CLOSE_WINDOW", header: "wx/event.h".}: EventType
  evt_PAINT* {.importcpp: "wxEVT_PAINT", header: "wx/event.h".}: EventType

# Architecture Note:
# In a full implementation, we would define a C++ bridge function:
#
# void nim_wx_callback_bridge(wxEvent& e) {
#    // Logic to find the Nim EvtHandler and call its closures
# }
#
# and use Bind like this:
# self.rawEvtHandler().bindRaw(et, nim_wx_callback_bridge, -1)

proc bind*(self: EvtHandler, eventType: EventType, callback: proc(e: Event)) =
  ## Binds a Nim closure to a wxWidgets event.
  let et = cint(eventType)
  if not self.handlers.hasKey(et):
    self.handlers[et] = @[]
    # self.rawEvtHandler().bindRaw(et, ...) # Bridge call would go here
  self.handlers[et].add(cast[EventHandlerClosure](callback))
