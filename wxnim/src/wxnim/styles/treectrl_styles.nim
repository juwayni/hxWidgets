type
  TreeCtrlStyle* = distinct clong

proc `or`*(a, b: TreeCtrlStyle): TreeCtrlStyle {.borrow.}

var
  trHasButtons* {.importcpp: "wxTR_HAS_BUTTONS", header: "wx/treectrl.h".}: TreeCtrlStyle
  trHideRoot* {.importcpp: "wxTR_HIDE_ROOT", header: "wx/treectrl.h".}: TreeCtrlStyle
  trMultiple* {.importcpp: "wxTR_MULTIPLE", header: "wx/treectrl.h".}: TreeCtrlStyle
  trNoLines* {.importcpp: "wxTR_NO_LINES", header: "wx/treectrl.h".}: TreeCtrlStyle
