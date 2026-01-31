import types

# MouseEvent accessors
proc getX*(self: ptr WxObjectRaw): cint {.importcpp: "((wxMouseEvent*)#)->GetX()", header: "wx/event.h".}
proc getY*(self: ptr WxObjectRaw): cint {.importcpp: "((wxMouseEvent*)#)->GetY()", header: "wx/event.h".}
proc leftDown*(self: ptr WxObjectRaw): bool {.importcpp: "((wxMouseEvent*)#)->LeftDown()", header: "wx/event.h".}

# KeyEvent accessors
proc getKeyCode*(self: ptr WxObjectRaw): cint {.importcpp: "((wxKeyEvent*)#)->GetKeyCode()", header: "wx/event.h".}

# SizeEvent accessors
proc getWidth*(self: ptr WxObjectRaw): cint {.importcpp: "((wxSizeEvent*)#)->GetSize().GetWidth()", header: "wx/event.h".}
proc getHeight*(self: ptr WxObjectRaw): cint {.importcpp: "((wxSizeEvent*)#)->GetSize().GetHeight()", header: "wx/event.h".}
