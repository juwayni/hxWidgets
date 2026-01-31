type
  WindowStyle* = distinct clong

proc `or`*(a, b: WindowStyle): WindowStyle {.borrow.}

var
  wsBorderNone* {.importcpp: "wxBORDER_NONE", header: "wx/window.h".}: WindowStyle
  wsHScroll* {.importcpp: "wxHSCROLL", header: "wx/window.h".}: WindowStyle
  wsVScroll* {.importcpp: "wxVSCROLL", header: "wx/window.h".}: WindowStyle

var
  wxVERTICAL* {.importcpp: "wxVERTICAL", header: "wx/defs.h".}: cint
  wxHORIZONTAL* {.importcpp: "wxHORIZONTAL", header: "wx/defs.h".}: cint
  wxEXPAND* {.importcpp: "wxEXPAND", header: "wx/defs.h".}: cint
  wxALL* {.importcpp: "wxALL", header: "wx/defs.h".}: cint

  wxID_OK* {.importcpp: "wxID_OK", header: "wx/defs.h".}: cint
  wxID_CANCEL* {.importcpp: "wxID_CANCEL", header: "wx/defs.h".}: cint
  wxID_EXIT* {.importcpp: "wxID_EXIT", header: "wx/defs.h".}: cint
