type
  ComboBoxStyle* = distinct clong

proc `or`*(a, b: ComboBoxStyle): ComboBoxStyle {.borrow.}

var
  cbSimple* {.importcpp: "wxCB_SIMPLE", header: "wx/combobox.h".}: ComboBoxStyle
  cbDropdown* {.importcpp: "wxCB_DROPDOWN", header: "wx/combobox.h".}: ComboBoxStyle
  cbReadonly* {.importcpp: "wxCB_READONLY", header: "wx/combobox.h".}: ComboBoxStyle
  cbSort* {.importcpp: "wxCB_SORT", header: "wx/combobox.h".}: ComboBoxStyle
