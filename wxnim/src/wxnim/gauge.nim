import window, common_types, evthandler
import ../wxraw/types
import ../wxraw/control_raw

type
  Gauge* = ref object of Control

proc newGauge*(parent: Window, range: int = 100, id: int = -1, x, y, width, height: int = -1, style: clong = 0): Gauge =
  let raw = newGaugeRaw(parent.rawWindow, id.cint, range.cint, PointRaw(x: x.cint, y: y.cint), SizeRaw(x: width.cint, y: height.cint), style)
  result = Gauge(rawObj: cast[ptr WxObjectRaw](raw)); result.initEvtHandler()

proc `value=`*(self: Gauge, pos: int) = cast[ptr GaugeRaw](self.rawObj).setValue(pos.cint)
