import window, common_types, evthandler
import ../wxraw/types
import ../wxraw/control_raw

type
  ComboBox* = ref object of Control

proc newComboBox*(parent: Window, value: string = "", id: int = -1, x, y, width, height: int = -1, style: clong = 0): ComboBox =
  let raw = newComboBoxRaw(parent.rawWindow, id.cint, constructWxString(value.cstring), PointRaw(x: x.cint, y: y.cint), SizeRaw(x: width.cint, y: height.cint), style)
  result = ComboBox(rawObj: cast[ptr WxObjectRaw](raw)); result.initEvtHandler()

proc append*(self: ComboBox, item: string): int = int(cast[ptr ComboBoxRaw](self.rawObj).append(constructWxString(item.cstring)))
