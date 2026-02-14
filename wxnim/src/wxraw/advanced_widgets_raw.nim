import types

# Notebook
proc newNotebookRaw*(parent: ptr WindowRaw, id: cint, pos: PointRaw, size: SizeRaw, style: clong): ptr NotebookRaw {.importcpp: "new wxNotebook(@)", header: "wx/notebook.h".}
proc addPage*(self: ptr NotebookRaw, page: ptr WindowRaw, text: WxStringRaw, select: bool = false, imageId: cint = -1): bool {.importcpp: "AddPage(@)", header: "wx/notebook.h".}

# ListCtrl
proc newListCtrlRaw*(parent: ptr WindowRaw, id: cint, pos: PointRaw, size: SizeRaw, style: clong): ptr ListCtrlRaw {.importcpp: "new wxListCtrl(@)", header: "wx/listctrl.h".}
proc insertColumn*(self: ptr ListCtrlRaw, col: clong, heading: WxStringRaw, format: cint = 0, width: cint = -1): clong {.importcpp: "InsertColumn(@)", header: "wx/listctrl.h".}
proc insertItem*(self: ptr ListCtrlRaw, index: clong, label: WxStringRaw): clong {.importcpp: "InsertItem(@)", header: "wx/listctrl.h".}
proc insertItemRaw*(self: ptr ListCtrlRaw, item: ptr ListItemRaw): clong {.importcpp: "InsertItem(#)", header: "wx/listctrl.h".}
proc setItem*(self: ptr ListCtrlRaw, index: clong, col: cint, label: WxStringRaw): bool {.importcpp: "SetItem(@)", header: "wx/listctrl.h".}
proc deleteItem*(self: ptr ListCtrlRaw, item: clong): bool {.importcpp: "DeleteItem(#)", header: "wx/listctrl.h".}
proc deleteAllItems*(self: ptr ListCtrlRaw): bool {.importcpp: "DeleteAllItems()", header: "wx/listctrl.h".}
proc getItemCount*(self: ptr ListCtrlRaw): cint {.importcpp: "GetItemCount()", header: "wx/listctrl.h".}
proc getSelectedItemCount*(self: ptr ListCtrlRaw): cint {.importcpp: "GetSelectedItemCount()", header: "wx/listctrl.h".}
proc setItemState*(self: ptr ListCtrlRaw, item, state, stateMask: clong): bool {.importcpp: "SetItemState(@)", header: "wx/listctrl.h".}
proc getNextItem*(self: ptr ListCtrlRaw, item: clong, geometry, state: cint): clong {.importcpp: "GetNextItem(@)", header: "wx/listctrl.h".}
proc ensureVisible*(self: ptr ListCtrlRaw, item: clong): bool {.importcpp: "EnsureVisible(#)", header: "wx/listctrl.h".}
proc setImageList*(self: ptr ListCtrlRaw, imageList: ptr ImageListRaw, which: cint) {.importcpp: "SetImageList(@)", header: "wx/listctrl.h".}
proc enableAlternateRowColours*(self: ptr ListCtrlRaw, enable: bool = true) {.importcpp: "EnableAlternateRowColours(#)", header: "wx/listctrl.h".}

# TreeCtrl
proc newTreeCtrlRaw*(parent: ptr WindowRaw, id: cint, pos: PointRaw, size: SizeRaw, style: clong): ptr TreeCtrlRaw {.importcpp: "new wxTreeCtrl(@)", header: "wx/treectrl.h".}
proc addRoot*(self: ptr TreeCtrlRaw, text: WxStringRaw, image: cint = -1, selImage: cint = -1): TreeItemIdRaw {.importcpp: "AddRoot(@)", header: "wx/treectrl.h".}
proc appendItem*(self: ptr TreeCtrlRaw, parent: TreeItemIdRaw, text: WxStringRaw, image: cint = -1, selImage: cint = -1): TreeItemIdRaw {.importcpp: "AppendItem(@)", header: "wx/treectrl.h".}
proc deleteItem*(self: ptr TreeCtrlRaw, item: TreeItemIdRaw) {.importcpp: "Delete(#)", header: "wx/treectrl.h".}
proc deleteAllItems*(self: ptr TreeCtrlRaw) {.importcpp: "DeleteAllItems()", header: "wx/treectrl.h".}
proc getSelection*(self: ptr TreeCtrlRaw): TreeItemIdRaw {.importcpp: "GetSelection()", header: "wx/treectrl.h".}
proc selectItem*(self: ptr TreeCtrlRaw, item: TreeItemIdRaw, select: bool = true) {.importcpp: "SelectItem(@)", header: "wx/treectrl.h".}
proc expand*(self: ptr TreeCtrlRaw, item: TreeItemIdRaw) {.importcpp: "Expand(#)", header: "wx/treectrl.h".}
proc collapse*(self: ptr TreeCtrlRaw, item: TreeItemIdRaw) {.importcpp: "Collapse(#)", header: "wx/treectrl.h".}

# ScrolledWindow
proc newScrolledWindowRaw*(parent: ptr WindowRaw, id: cint, pos: PointRaw, size: SizeRaw, style: clong): ptr ScrolledWindowRaw {.importcpp: "new wxScrolledWindow(@)", header: "wx/scrolwin.h".}
proc setScrollbars*(self: ptr ScrolledWindowRaw, pixelsPerUnitX, pixelsPerUnitY, noUnitsX, noUnitsY, xPos: cint = 0, yPos: cint = 0, noRefresh: bool = false) {.importcpp: "SetScrollbars(@)", header: "wx/scrolwin.h".}

# Grid
proc newGridRaw*(parent: ptr WindowRaw, id: cint, pos: PointRaw, size: SizeRaw, style: clong): ptr GridRaw {.importcpp: "new wxGrid(@)", header: "wx/grid/grid.h".}
proc createGrid*(self: ptr GridRaw, numRows, numCols: cint, selmode: cint = 0): bool {.importcpp: "CreateGrid(@)", header: "wx/grid/grid.h".}

# WebView
proc newWebViewRaw*(parent: ptr WindowRaw, id: cint, url: WxStringRaw, pos: PointRaw, size: SizeRaw, style: clong): ptr WebViewRaw {.importcpp: "wxWebView::New(@)", header: "wx/webview.h".}
proc loadURL*(self: ptr WebViewRaw, url: WxStringRaw) {.importcpp: "LoadURL(@)", header: "wx/webview.h".}

# DataViewCtrl
proc newDataViewCtrlRaw*(parent: ptr WindowRaw, id: cint, pos: PointRaw, size: SizeRaw, style: clong): ptr DataViewCtrlRaw {.importcpp: "new wxDataViewCtrl(@)", header: "wx/dataview.h".}

# PropertyGrid
proc newPropertyGridRaw*(parent: ptr WindowRaw, id: cint, pos: PointRaw, size: SizeRaw, style: clong): ptr PropertyGridRaw {.importcpp: "new wxPropertyGrid(@)", header: "wx/propgrid/propgrid.h".}

# HyperlinkCtrl
proc newHyperlinkCtrlRaw*(parent: ptr WindowRaw, id: cint, label, url: WxStringRaw, pos: PointRaw, size: SizeRaw, style: clong): ptr HyperlinkCtrlRaw {.importcpp: "new wxHyperlinkCtrl(@)", header: "wx/hyperlink.h".}

# CalendarCtrl
proc newCalendarCtrlRaw*(parent: ptr WindowRaw, id: cint, pos: PointRaw, size: SizeRaw, style: clong): ptr CalendarCtrlRaw {.importcpp: "new wxCalendarCtrl(@)", header: "wx/calctrl.h".}
proc setHeaderColours*(self: ptr CalendarCtrlRaw, colFg, colBg: ptr ColourRaw) {.importcpp: "SetHeaderColours(@)", header: "wx/calctrl.h".}

# GLCanvas
proc newGLCanvasRaw*(parent: ptr WindowRaw, id: cint, attribList: ptr cint, pos: PointRaw, size: SizeRaw, style: clong): ptr GLCanvasRaw {.importcpp: "new wxGLCanvas(@)", header: "wx/glcanvas.h".}
proc newGLContextRaw*(canvas: ptr GLCanvasRaw): ptr WxObjectRaw {.importcpp: "new wxGLContext(@)", header: "wx/glcanvas.h".}
proc setCurrent*(self: ptr GLCanvasRaw, context: ptr WxObjectRaw): bool {.importcpp: "#->SetCurrent(*((wxGLContext*)#))", header: "wx/glcanvas.h".}
