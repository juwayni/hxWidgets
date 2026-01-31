import types

proc bindRaw*[T](self: ptr EvtHandlerRaw, eventType: cint, handler: proc(e: T) {.cdecl.}, id: cint = -1) {.importcpp: "#->Bind(@)", header: "wx/event.h".}
