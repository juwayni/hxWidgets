type
  ListCtrlStyle* = distinct clong

proc `or`*(a, b: ListCtrlStyle): ListCtrlStyle {.borrow.}

var
  lcReport* {.importcpp: "wxLC_REPORT", header: "wx/listctrl.h".}: ListCtrlStyle
  lcVirtual* {.importcpp: "wxLC_VIRTUAL", header: "wx/listctrl.h".}: ListCtrlStyle
  lcIcon* {.importcpp: "wxLC_ICON", header: "wx/listctrl.h".}: ListCtrlStyle
  lcList* {.importcpp: "wxLC_LIST", header: "wx/listctrl.h".}: ListCtrlStyle

type
  TreeCtrlStyle* = distinct clong

proc `or`*(a, b: TreeCtrlStyle): TreeCtrlStyle {.borrow.}

var
  trHasButtons* {.importcpp: "wxTR_HAS_BUTTONS", header: "wx/treectrl.h".}: TreeCtrlStyle
  trHideRoot* {.importcpp: "wxTR_HIDE_ROOT", header: "wx/treectrl.h".}: TreeCtrlStyle
  trMultiple* {.importcpp: "wxTR_MULTIPLE", header: "wx/treectrl.h".}: TreeCtrlStyle
