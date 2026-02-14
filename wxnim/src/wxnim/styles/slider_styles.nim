type
  SliderStyle* = distinct clong

proc `or`*(a, b: SliderStyle): SliderStyle {.borrow.}

var
  slHorizontal* {.importcpp: "wxSL_HORIZONTAL", header: "wx/slider.h".}: SliderStyle
  slVertical* {.importcpp: "wxSL_VERTICAL", header: "wx/slider.h".}: SliderStyle
  slAutoticks* {.importcpp: "wxSL_AUTOTICKS", header: "wx/slider.h".}: SliderStyle
  slLabels* {.importcpp: "wxSL_LABELS", header: "wx/slider.h".}: SliderStyle
