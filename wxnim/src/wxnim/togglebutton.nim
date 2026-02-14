import window, common_types, evthandler
import ../wxraw/types
import ../wxraw/control_raw

type
  ToggleButton* = ref object of AnyButton

proc newToggleButton*(parent: Window, label: string = "", id: int = -1, x, y, width, height: int = -1, style: clong = 0): ToggleButton =
  let raw = newToggleButtonRaw(parent.rawWindow, id.cint, constructWxString(label.cstring), PointRaw(x: x.cint, y: y.cint), SizeRaw(x: width.cint, y: height.cint), style)
  result = ToggleButton(rawObj: cast[ptr WxObjectRaw](raw)); result.initEvtHandler()

proc value*(self: ToggleButton): bool = cast[ptr ToggleButtonRaw](self.rawObj).getValue()
proc `value=`*(self: ToggleButton, state: bool) = cast[ptr ToggleButtonRaw](self.rawObj).setValue(state)
