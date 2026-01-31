type
  ButtonStyle* = distinct clong

proc `or`*(a, b: ButtonStyle): ButtonStyle {.borrow.}

var
  bsLeft* {.importcpp: "wxBU_LEFT", header: "wx/button.h".}: ButtonStyle
  bsTop* {.importcpp: "wxBU_TOP", header: "wx/button.h".}: ButtonStyle
  bsRight* {.importcpp: "wxBU_RIGHT", header: "wx/button.h".}: ButtonStyle
  bsBottom* {.importcpp: "wxBU_BOTTOM", header: "wx/button.h".}: ButtonStyle
  bsExactFit* {.importcpp: "wxBU_EXACTFIT", header: "wx/button.h".}: ButtonStyle
