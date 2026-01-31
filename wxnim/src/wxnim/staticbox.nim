import window, common_types, evthandler
import ../wxraw/types
import ../wxraw/control_raw

type
  StaticBox* = ref object of Control

proc newStaticBox*(parent: Window, label: string = "", id: int = -1, x, y, width, height: int = -1, style: clong = 0): StaticBox =
  let raw = newStaticBoxRaw(parent.rawWindow, id.cint, constructWxString(label.cstring), PointRaw(x: x.cint, y: y.cint), SizeRaw(x: width.cint, y: height.cint), style)
  result = StaticBox(rawObj: cast[ptr WxObjectRaw](raw)); result.initEvtHandler()
