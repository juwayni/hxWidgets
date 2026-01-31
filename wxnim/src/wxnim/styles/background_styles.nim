type
  BackgroundStyle* = distinct cint
var
  bgStyleInherit* {.importcpp: "wxBG_STYLE_INHERIT", header: "wx/defs.h".}: BackgroundStyle
  bgStyleColour* {.importcpp: "wxBG_STYLE_COLOUR", header: "wx/defs.h".}: BackgroundStyle
  bgStyleTransparent* {.importcpp: "wxBG_STYLE_TRANSPARENT", header: "wx/defs.h".}: BackgroundStyle
  bgStylePaint* {.importcpp: "wxBG_STYLE_PAINT", header: "wx/defs.h".}: BackgroundStyle
