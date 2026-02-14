import window, common_types, evthandler, utils
import ../wxraw/types
import ../wxraw/advanced_widgets_raw

type
  TreeItemId* = TreeItemIdRaw
  TreeCtrl* = ref object of Control

proc rawTreeCtrl*(self: TreeCtrl): ptr TreeCtrlRaw = cast[ptr TreeCtrlRaw](self.rawObj)

proc newTreeCtrl*(parent: Window, id: int = -1, x, y, width, height: int = -1, style: clong = 0): TreeCtrl =
  let raw = newTreeCtrlRaw(parent.rawWindow, id.cint, PointRaw(x: x.cint, y: y.cint), SizeRaw(x: width.cint, y: height.cint), style)
  result = TreeCtrl(rawObj: cast[ptr WxObjectRaw](raw)); result.initEvtHandler()

proc addRoot*(self: TreeCtrl, text: string, image: int = -1, selImage: int = -1): TreeItemId =
  self.rawTreeCtrl.addRoot(constructWxString(text.cstring), image.cint, selImage.cint)

proc appendItem*(self: TreeCtrl, parent: TreeItemId, text: string, image: int = -1, selImage: int = -1): TreeItemId =
  self.rawTreeCtrl.appendItem(parent, constructWxString(text.cstring), image.cint, selImage.cint)

proc deleteItem*(self: TreeCtrl, item: TreeItemId) = self.rawTreeCtrl.deleteItem(item)
proc deleteAllItems*(self: TreeCtrl) = self.rawTreeCtrl.deleteAllItems()
proc selection*(self: TreeCtrl): TreeItemId = self.rawTreeCtrl.getSelection()
proc selectItem*(self: TreeCtrl, item: TreeItemId, select: bool = true) = self.rawTreeCtrl.selectItem(item, select)
proc expand*(self: TreeCtrl, item: TreeItemId) = self.rawTreeCtrl.expand(item)
proc collapse*(self: TreeCtrl, item: TreeItemId) = self.rawTreeCtrl.collapse(item)
