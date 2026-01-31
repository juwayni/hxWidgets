import types

# Notebook
proc newNotebookRaw*(parent: ptr WindowRaw, id: cint, pos: PointRaw, size: SizeRaw, style: clong): ptr NotebookRaw {.importcpp: "new wxNotebook(@)", header: "wx/notebook.h".}
proc addPage*(self: ptr NotebookRaw, page: ptr WindowRaw, text: WxStringRaw, select: bool = false, imageId: cint = -1): bool {.importcpp: "AddPage(@)", header: "wx/notebook.h".}

# ListCtrl
proc newListCtrlRaw*(parent: ptr WindowRaw, id: cint, pos: PointRaw, size: SizeRaw, style: clong): ptr ListCtrlRaw {.importcpp: "new wxListCtrl(@)", header: "wx/listctrl.h".}
proc insertColumn*(self: ptr ListCtrlRaw, col: clong, heading: WxStringRaw, format: cint = 0, width: cint = -1): clong {.importcpp: "InsertColumn(@)", header: "wx/listctrl.h".}
proc insertItem*(self: ptr ListCtrlRaw, index: clong, label: WxStringRaw): clong {.importcpp: "InsertItem(@)", header: "wx/listctrl.h".}
proc setItem*(self: ptr ListCtrlRaw, index: clong, col: cint, label: WxStringRaw): bool {.importcpp: "SetItem(@)", header: "wx/listctrl.h".}

# TreeCtrl
proc newTreeCtrlRaw*(parent: ptr WindowRaw, id: cint, pos: PointRaw, size: SizeRaw, style: clong): ptr TreeCtrlRaw {.importcpp: "new wxTreeCtrl(@)", header: "wx/treectrl.h".}
proc addRoot*(self: ptr TreeCtrlRaw, text: WxStringRaw, image: cint = -1, selImage: cint = -1): TreeItemIdRaw {.importcpp: "AddRoot(@)", header: "wx/treectrl.h".}
proc appendItem*(self: ptr TreeCtrlRaw, parent: TreeItemIdRaw, text: WxStringRaw, image: cint = -1, selImage: cint = -1): TreeItemIdRaw {.importcpp: "AppendItem(@)", header: "wx/treectrl.h".}

# ScrolledWindow
proc newScrolledWindowRaw*(parent: ptr WindowRaw, id: cint, pos: PointRaw, size: SizeRaw, style: clong): ptr ScrolledWindowRaw {.importcpp: "new wxScrolledWindow(@)", header: "wx/scrolwin.h".}
proc setScrollbars*(self: ptr ScrolledWindowRaw, pixelsPerUnitX, pixelsPerUnitY, noUnitsX, noUnitsY, xPos: cint = 0, yPos: cint = 0, noRefresh: bool = false) {.importcpp: "SetScrollbars(@)", header: "wx/scrolwin.h".}
