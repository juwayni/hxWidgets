type
  TextCtrlStyle* = distinct clong

proc `or`*(a, b: TextCtrlStyle): TextCtrlStyle {.borrow.}

var
  teProcessEnter* {.importcpp: "wxTE_PROCESS_ENTER", header: "wx/textctrl.h".}: TextCtrlStyle
  teMultiline* {.importcpp: "wxTE_MULTILINE", header: "wx/textctrl.h".}: TextCtrlStyle
  teReadOnly* {.importcpp: "wxTE_READONLY", header: "wx/textctrl.h".}: TextCtrlStyle
  tePassword* {.importcpp: "wxTE_PASSWORD", header: "wx/textctrl.h".}: TextCtrlStyle
