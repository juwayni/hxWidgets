import types

# ListCtrl Expansion
proc deleteItem*(self: ptr ListCtrlRaw, item: clong): bool {.importcpp: "DeleteItem(#)", header: "wx/listctrl.h".}
proc deleteAllItems*(self: ptr ListCtrlRaw): bool {.importcpp: "DeleteAllItems()", header: "wx/listctrl.h".}
proc getItemCount*(self: ptr ListCtrlRaw): cint {.importcpp: "GetItemCount()", header: "wx/listctrl.h".}
proc getSelectedItemCount*(self: ptr ListCtrlRaw): cint {.importcpp: "GetSelectedItemCount()", header: "wx/listctrl.h".}
proc setItemState*(self: ptr ListCtrlRaw, item, state, stateMask: clong): bool {.importcpp: "SetItemState(@)", header: "wx/listctrl.h".}
proc getNextItem*(self: ptr ListCtrlRaw, item: clong, geometry, state: cint): clong {.importcpp: "GetNextItem(@)", header: "wx/listctrl.h".}
proc ensureVisible*(self: ptr ListCtrlRaw, item: clong): bool {.importcpp: "EnsureVisible(#)", header: "wx/listctrl.h".}
proc setImageList*(self: ptr ListCtrlRaw, imageList: ptr ImageListRaw, which: cint) {.importcpp: "SetImageList(@)", header: "wx/listctrl.h".}
proc enableAlternateRowColours*(self: ptr ListCtrlRaw, enable: bool = true) {.importcpp: "EnableAlternateRowColours(#)", header: "wx/listctrl.h".}

# TreeCtrl Expansion
proc deleteItem*(self: ptr TreeCtrlRaw, item: TreeItemIdRaw) {.importcpp: "Delete(#)", header: "wx/treectrl.h".}
proc deleteAllItems*(self: ptr TreeCtrlRaw) {.importcpp: "DeleteAllItems()", header: "wx/treectrl.h".}
proc getSelection*(self: ptr TreeCtrlRaw): TreeItemIdRaw {.importcpp: "GetSelection()", header: "wx/treectrl.h".}
proc selectItem*(self: ptr TreeCtrlRaw, item: TreeItemIdRaw, select: bool = true) {.importcpp: "SelectItem(@)", header: "wx/treectrl.h".}
proc expand*(self: ptr TreeCtrlRaw, item: TreeItemIdRaw) {.importcpp: "Expand(#)", header: "wx/treectrl.h".}
proc collapse*(self: ptr TreeCtrlRaw, item: TreeItemIdRaw) {.importcpp: "Collapse(#)", header: "wx/treectrl.h".}
