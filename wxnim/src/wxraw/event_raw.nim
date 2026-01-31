import types

proc getEventType*(self: ptr WxObjectRaw): cint {.importcpp: "((wxEvent*)#)->GetEventType()", header: "wx/event.h".}
proc getId*(self: ptr WxObjectRaw): cint {.importcpp: "((wxEvent*)#)->GetId()", header: "wx/event.h".}
proc skip*(self: ptr WxObjectRaw, skip: bool = true) {.importcpp: "((wxEvent*)#)->Skip(@)", header: "wx/event.h".}
proc stopPropagation*(self: ptr WxObjectRaw) {.importcpp: "((wxEvent*)#)->StopPropagation()", header: "wx/event.h".}

# MouseEvent accessors
proc getX*(self: ptr WxObjectRaw): cint {.importcpp: "((wxMouseEvent*)#)->GetX()", header: "wx/event.h".}
proc getY*(self: ptr WxObjectRaw): cint {.importcpp: "((wxMouseEvent*)#)->GetY()", header: "wx/event.h".}
proc leftDown*(self: ptr WxObjectRaw): bool {.importcpp: "((wxMouseEvent*)#)->LeftDown()", header: "wx/event.h".}

# KeyEvent accessors
proc getKeyCode*(self: ptr WxObjectRaw): cint {.importcpp: "((wxKeyEvent*)#)->GetKeyCode()", header: "wx/event.h".}

# SizeEvent accessors
proc getWidth*(self: ptr WxObjectRaw): cint {.importcpp: "((wxSizeEvent*)#)->GetSize().GetWidth()", header: "wx/event.h".}
proc getHeight*(self: ptr WxObjectRaw): cint {.importcpp: "((wxSizeEvent*)#)->GetSize().GetHeight()", header: "wx/event.h".}
