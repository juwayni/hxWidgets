type
  BrushStyle* = distinct cint
var
  brTransparent* {.importcpp: "wxBRUSHSTYLE_TRANSPARENT", header: "wx/brush.h".}: BrushStyle
  brSolid* {.importcpp: "wxBRUSHSTYLE_SOLID", header: "wx/brush.h".}: BrushStyle
