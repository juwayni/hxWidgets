import window, common_types, evthandler
import ../wxraw/types
import ../wxraw/control_raw

type
  StaticLine* = ref object of Control

proc newStaticLine*(parent: Window, id: int = -1, x, y, width, height: int = -1, style: clong = 0): StaticLine =
  let raw = newStaticLineRaw(parent.rawWindow, id.cint, PointRaw(x: x.cint, y: y.cint), SizeRaw(x: width.cint, y: height.cint), style)
  result = StaticLine(rawObj: cast[ptr WxObjectRaw](raw)); result.initEvtHandler()
