import window, common_types, evthandler, utils, gdi
import ../wxraw/types
import ../wxraw/advanced_widgets_raw
import ../wxraw/listctrl_raw

type
  ListItem* = ref object of Object

proc finalizeListItem(self: ListItem) =
  if self.rawObj != nil: deleteListItemRaw(cast[ptr ListItemRaw](self.rawObj))

proc newListItem*(): ListItem =
  let raw = newListItemRaw()
  new(result, finalizeListItem); result.rawObj = cast[ptr WxObjectRaw](raw)

proc `id=`*(self: ListItem, id: int) = cast[ptr ListItemRaw](self.rawObj).setId(id.clong)
proc `text=`*(self: ListItem, text: string) = cast[ptr ListItemRaw](self.rawObj).setText(constructWxString(text.cstring))

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

proc insertListItem*(self: ListCtrl, item: ListItem): int =
  int(cast[ptr ListCtrlRaw](self.rawObj).insertItem(cast[ptr ListItemRaw](item.rawObj).clong)) # Incorrect raw binding, needs fix
