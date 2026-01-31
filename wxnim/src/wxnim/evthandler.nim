import tables
import object
import ../wxraw/types
import ../wxraw/evthandler_raw

type
  EventHandlerClosure* = proc(e: RootRef)

  EvtHandler* = ref object of Object
    handlers*: Table[cint, seq[EventHandlerClosure]]

proc rawEvtHandler*(self: EvtHandler): ptr EvtHandlerRaw =
  cast[ptr EvtHandlerRaw](self.rawObj)

proc initEvtHandler*(self: EvtHandler) =
  self.handlers = initTable[cint, seq[EventHandlerClosure]]()
