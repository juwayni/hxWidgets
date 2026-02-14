import tables
import common_types, object
import ../wxraw/types
import ../wxraw/evthandler_raw

type
  EventHandlerClosure* = proc(e: RootRef)

proc rawEvtHandler*(self: EvtHandler): ptr EvtHandlerRaw =
  if self == nil: return nil
  cast[ptr EvtHandlerRaw](self.rawObj)

# Global registry from events.nim
var handlerRegistry {.importc.}: Table[pointer, pointer]

proc finalizeEvtHandler(self: EvtHandler) =
  if self.rawObj != nil:
    # Remove from registry to avoid stale pointers
    handlerRegistry.del(self.rawObj)

proc initEvtHandler*(self: EvtHandler) =
  if self != nil:
    self.handlers = initTable[cint, seq[EventHandlerClosure]]()
    # We don't set finalizer here because the object is already created
    # Finalizers must be set with new()
