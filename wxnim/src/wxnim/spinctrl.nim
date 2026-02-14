import window, common_types, evthandler
import ../wxraw/types
import ../wxraw/control_raw

type
  SpinCtrl* = ref object of Control

proc newSpinCtrl*(parent: Window, value: string = "", id: int = -1, x, y, width, height: int = -1, style: clong = 0): SpinCtrl =
  let raw = newSpinCtrlRaw(parent.rawWindow, id.cint, constructWxString(value.cstring), PointRaw(x: x.cint, y: y.cint), SizeRaw(x: width.cint, y: height.cint), style)
  result = SpinCtrl(rawObj: cast[ptr WxObjectRaw](raw)); result.initEvtHandler()

proc value*(self: SpinCtrl): int = int(cast[ptr SpinCtrlRaw](self.rawObj).getValue())
proc `value=`*(self: SpinCtrl, value: int) = cast[ptr SpinCtrlRaw](self.rawObj).setValue(value.cint)
