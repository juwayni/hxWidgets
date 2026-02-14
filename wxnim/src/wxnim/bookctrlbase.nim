import common_types, window

type
  BookCtrlBase* = ref object of Window

proc getPageCount*(self: BookCtrlBase): int {.importcpp: "GetPageCount()", header: "wx/bookctrl.h".}
proc getSelection*(self: BookCtrlBase): int {.importcpp: "GetSelection()", header: "wx/bookctrl.h".}
proc setSelection*(self: BookCtrlBase, page: int): int {.importcpp: "SetSelection(#)", header: "wx/bookctrl.h".}
