import window, common_types
import ../wxraw/types
import ../wxraw/advanced_widgets_raw

type
  Notebook* = ref object of Window
  ListCtrl* = ref object of Control
  TreeCtrl* = ref object of Control
  ScrolledWindow* = ref object of Window

proc newNotebook*(parent: Window, id: int = -1, x: int = -1, y: int = -1, width: int = -1, height: int = -1, style: clong = 0): Notebook =
  let raw = newNotebookRaw(parent.rawWindow, id.cint, PointRaw(x: x.cint, y: y.cint), SizeRaw(x: width.cint, y: height.cint), style)
  result = Notebook(rawObj: cast[ptr WxObjectRaw](raw))
  result.initEvtHandler()

proc addPage*(self: Notebook, page: Window, text: string, select: bool = false, imageId: int = -1): bool =
  cast[ptr NotebookRaw](self.rawObj).addPage(page.rawWindow, constructWxString(text.cstring), select, imageId.cint)

proc newListCtrl*(parent: Window, id: int = -1, x: int = -1, y: int = -1, width: int = -1, height: int = -1, style: clong = 0): ListCtrl =
  let raw = newListCtrlRaw(parent.rawWindow, id.cint, PointRaw(x: x.cint, y: y.cint), SizeRaw(x: width.cint, y: height.cint), style)
  result = ListCtrl(rawObj: cast[ptr WxObjectRaw](raw))
  result.initEvtHandler()

proc insertColumn*(self: ListCtrl, col: int, heading: string, format: int = 0, width: int = -1): int =
  int(cast[ptr ListCtrlRaw](self.rawObj).insertColumn(col.clong, constructWxString(heading.cstring), format.cint, width.cint))

proc insertItem*(self: ListCtrl, index: int, label: string): int =
  int(cast[ptr ListCtrlRaw](self.rawObj).insertItem(index.clong, constructWxString(label.cstring)))

proc setItem*(self: ListCtrl, index: int, col: int, label: string): bool =
  cast[ptr ListCtrlRaw](self.rawObj).setItem(index.clong, col.cint, constructWxString(label.cstring))

type
  TreeItemId* = TreeItemIdRaw

proc newTreeCtrl*(parent: Window, id: int = -1, x: int = -1, y: int = -1, width: int = -1, height: int = -1, style: clong = 0): TreeCtrl =
  let raw = newTreeCtrlRaw(parent.rawWindow, id.cint, PointRaw(x: x.cint, y: y.cint), SizeRaw(x: width.cint, y: height.cint), style)
  result = TreeCtrl(rawObj: cast[ptr WxObjectRaw](raw))
  result.initEvtHandler()

proc addRoot*(self: TreeCtrl, text: string, image: int = -1, selImage: int = -1): TreeItemId =
  cast[ptr TreeCtrlRaw](self.rawObj).addRoot(constructWxString(text.cstring), image.cint, selImage.cint)

proc appendItem*(self: TreeCtrl, parent: TreeItemId, text: string, image: int = -1, selImage: int = -1): TreeItemId =
  cast[ptr TreeCtrlRaw](self.rawObj).appendItem(parent, constructWxString(text.cstring), image.cint, selImage.cint)

proc newScrolledWindow*(parent: Window, id: int = -1, x: int = -1, y: int = -1, width: int = -1, height: int = -1, style: clong = 0): ScrolledWindow =
  let raw = newScrolledWindowRaw(parent.rawWindow, id.cint, PointRaw(x: x.cint, y: y.cint), SizeRaw(x: width.cint, y: height.cint), style)
  result = ScrolledWindow(rawObj: cast[ptr WxObjectRaw](raw))
  result.initEvtHandler()

proc setScrollbars*(self: ScrolledWindow, pixelsPerUnitX, pixelsPerUnitY, noUnitsX, noUnitsY, xPos: int = 0, yPos: int = 0, noRefresh: bool = false) =
  cast[ptr ScrolledWindowRaw](self.rawObj).setScrollbars(pixelsPerUnitX.cint, pixelsPerUnitY.cint, noUnitsX.cint, noUnitsY.cint, xPos.cint, yPos.cint, noRefresh)
