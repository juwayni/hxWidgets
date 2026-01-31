import window, common_types, evthandler, utils, gdi
import ../wxraw/types
import ../wxraw/advanced_widgets_raw

type
  ListCtrl* = ref object of Control

proc rawListCtrl*(self: ListCtrl): ptr ListCtrlRaw = cast[ptr ListCtrlRaw](self.rawObj)

proc newListCtrl*(parent: Window, id: int = -1, x, y, width, height: int = -1, style: clong = 0): ListCtrl =
  let raw = newListCtrlRaw(parent.rawWindow, id.cint, PointRaw(x: x.cint, y: y.cint), SizeRaw(x: width.cint, y: height.cint), style)
  result = ListCtrl(rawObj: cast[ptr WxObjectRaw](raw)); result.initEvtHandler()

proc insertColumn*(self: ListCtrl, col: int, heading: string, format: int = 0, width: int = -1): int =
  int(self.rawListCtrl.insertColumn(col.clong, constructWxString(heading.cstring), format.cint, width.cint))

proc insertItem*(self: ListCtrl, index: int, label: string): int =
  int(self.rawListCtrl.insertItem(index.clong, constructWxString(label.cstring)))

proc setItem*(self: ListCtrl, index: int, col: int, label: string): bool =
  self.rawListCtrl.setItem(index.clong, col.cint, constructWxString(label.cstring))

proc deleteItem*(self: ListCtrl, item: int): bool = self.rawListCtrl.deleteItem(item.clong)
proc deleteAllItems*(self: ListCtrl): bool = self.rawListCtrl.deleteAllItems()
proc itemCount*(self: ListCtrl): int = int(self.rawListCtrl.getItemCount())
proc selectedItemCount*(self: ListCtrl): int = int(self.rawListCtrl.getSelectedItemCount())

proc setItemState*(self: ListCtrl, item, state, stateMask: int): bool =
  self.rawListCtrl.setItemState(item.clong, state.clong, stateMask.clong)

proc ensureVisible*(self: ListCtrl, item: int): bool = self.rawListCtrl.ensureVisible(item.clong)

proc setImageList*(self: ListCtrl, imageList: ImageList, which: int) =
  self.rawListCtrl.setImageList(cast[ptr ImageListRaw](imageList.rawObj), which.cint)

proc `enableAlternateRowColours=`*(self: ListCtrl, enable: bool) =
  self.rawListCtrl.enableAlternateRowColours(enable)
