import window, common_types, evthandler, utils
import ../wxraw/types
import ../wxraw/advanced_widgets_raw

type
  PropertyGrid* = ref object of Control

proc newPropertyGrid*(parent: Window, id: int = -1, x, y, width, height: int = -1, style: clong = 0): PropertyGrid =
  let raw = newPropertyGridRaw(parent.rawWindow, id.cint, PointRaw(x: x.cint, y: y.cint), SizeRaw(x: width.cint, y: height.cint), style)
  result = PropertyGrid(rawObj: cast[ptr WxObjectRaw](raw)); result.initEvtHandler()
