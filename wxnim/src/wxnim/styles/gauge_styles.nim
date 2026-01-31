type
  GaugeStyle* = distinct clong

proc `or`*(a, b: GaugeStyle): GaugeStyle {.borrow.}

var
  gaHorizontal* {.importcpp: "wxGA_HORIZONTAL", header: "wx/gauge.h".}: GaugeStyle
  gaVertical* {.importcpp: "wxGA_VERTICAL", header: "wx/gauge.h".}: GaugeStyle
  gaSmooth* {.importcpp: "wxGA_SMOOTH", header: "wx/gauge.h".}: GaugeStyle
