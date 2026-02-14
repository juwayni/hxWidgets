type
  AntialiasMode* = distinct cint
var
  aaNone* {.importcpp: "wxANTIALIAS_NONE", header: "wx/graphics.h".}: AntialiasMode
  aaDefault* {.importcpp: "wxANTIALIAS_DEFAULT", header: "wx/graphics.h".}: AntialiasMode
