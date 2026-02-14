import window, common_types
import ../wxraw/types
import ../wxraw/control_raw

type
  StaticText* = ref object of Control

proc newStaticText*(parent: Window, label: string = "", id: int = -1,
                    x: int = -1, y: int = -1, width: int = -1, height: int = -1,
                    style: clong = 0): StaticText =
  let raw = newStaticTextRaw(parent.rawWindow, id.cint, constructWxString(label.cstring), PointRaw(x: x.cint, y: y.cint), SizeRaw(x: width.cint, y: height.cint), style)
  result = StaticText(rawObj: cast[ptr WxObjectRaw](raw))
  result.initEvtHandler()

type
  CheckBox* = ref object of Control

proc newCheckBox*(parent: Window, label: string = "", id: int = -1,
                  x: int = -1, y: int = -1, width: int = -1, height: int = -1,
                  style: clong = 0): CheckBox =
  let raw = newCheckBoxRaw(parent.rawWindow, id.cint, constructWxString(label.cstring), PointRaw(x: x.cint, y: y.cint), SizeRaw(x: width.cint, y: height.cint), style)
  result = CheckBox(rawObj: cast[ptr WxObjectRaw](raw))
  result.initEvtHandler()

proc value*(self: CheckBox): bool =
  cast[ptr CheckBoxRaw](self.rawObj).getValue()

proc `value=`*(self: CheckBox, state: bool) =
  cast[ptr CheckBoxRaw](self.rawObj).setValue(state)
