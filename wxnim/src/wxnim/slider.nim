import window, common_types, evthandler
import ../wxraw/types
import ../wxraw/control_raw

type
  Slider* = ref object of Control

proc newSlider*(parent: Window, value: int = 0, minValue: int = 0, maxValue: int = 100, id: int = -1, x, y, width, height: int = -1, style: clong = 0): Slider =
  let raw = newSliderRaw(parent.rawWindow, id.cint, value.cint, minValue.cint, maxValue.cint, PointRaw(x: x.cint, y: y.cint), SizeRaw(x: width.cint, y: height.cint), style)
  result = Slider(rawObj: cast[ptr WxObjectRaw](raw)); result.initEvtHandler()

proc value*(self: Slider): int = int(cast[ptr SliderRaw](self.rawObj).getValue())
proc `value=`*(self: Slider, value: int) = cast[ptr SliderRaw](self.rawObj).setValue(value.cint)
