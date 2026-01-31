import types

proc bindRaw*(self: ptr EvtHandlerRaw, eventType: cint, handler: proc(e: var EventRaw) {.cdecl.}, id: cint = -1) {.importcpp: "#->Bind(@)", header: "wx/event.h".}
