import window, common_types, evthandler
import ../wxraw/types
import ../wxraw/control_raw

type
  ListBox* = ref object of Control

proc newListBox*(parent: Window, id: int = -1, x, y, width, height: int = -1, style: clong = 0): ListBox =
  let raw = newListBoxRaw(parent.rawWindow, id.cint, PointRaw(x: x.cint, y: y.cint), SizeRaw(x: width.cint, y: height.cint), style)
  result = ListBox(rawObj: cast[ptr WxObjectRaw](raw)); result.initEvtHandler()

proc append*(self: ListBox, item: string): int = int(cast[ptr ListBoxRaw](self.rawObj).append(constructWxString(item.cstring)))
