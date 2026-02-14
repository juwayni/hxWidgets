type
  RadioButtonStyle* = distinct clong
var
  rbGroup* {.importcpp: "wxRB_GROUP", header: "wx/radiobut.h".}: RadioButtonStyle
  rbSingle* {.importcpp: "wxRB_SINGLE", header: "wx/radiobut.h".}: RadioButtonStyle
