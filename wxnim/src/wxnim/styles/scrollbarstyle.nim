type
  ScrollBarStyle* = distinct clong
var
  sbHorizontal* {.importcpp: "wxSB_HORIZONTAL", header: "wx/scrolbar.h".}: ScrollBarStyle
  sbVertical* {.importcpp: "wxSB_VERTICAL", header: "wx/scrolbar.h".}: ScrollBarStyle
