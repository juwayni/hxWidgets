import tables
import common_types, object
import ../wxraw/types
import ../wxraw/evthandler_raw

type
  EventHandlerClosure* = proc(e: RootRef)

proc rawEvtHandler*(self: EvtHandler): ptr EvtHandlerRaw =
  if self == nil: return nil
  cast[ptr EvtHandlerRaw](self.rawObj)

proc initEvtHandler*(self: EvtHandler) =
  if self != nil:
    self.handlers = initTable[cint, seq[EventHandlerClosure]]()

proc queueEvent*(self: EvtHandler, event: ptr WxObjectRaw) {.importcpp: "QueueEvent(@)", header: "wx/event.h".}
