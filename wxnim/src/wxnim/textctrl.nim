import window, common_types, utils
import ../wxraw/types
import ../wxraw/textctrl_raw

type
  TextCtrl* = ref object of Control

proc rawTextCtrl*(self: TextCtrl): ptr TextCtrlRaw =
  cast[ptr TextCtrlRaw](self.rawObj)

proc newTextCtrl*(parent: Window, text: string = "", id: int = -1,
                  x: int = -1, y: int = -1, width: int = -1, height: int = -1,
                  style: clong = 0): TextCtrl =
  let rawParent = parent.rawWindow
  let rawText = constructWxString(text.cstring)
  let pos = PointRaw(x: x.cint, y: y.cint)
  let size = SizeRaw(x: width.cint, y: height.cint)

  let raw = newTextCtrlRaw(rawParent, id.cint, rawText, pos, size, style)
  result = TextCtrl(rawObj: cast[ptr WxObjectRaw](raw))
  result.initEvtHandler()

proc value*(self: TextCtrl): string =
  $(self.rawTextCtrl.getValue())

proc `value=`*(self: TextCtrl, val: string) =
  self.rawTextCtrl.setValue(constructWxString(val.cstring))

proc appendText*(self: TextCtrl, text: string) =
  self.rawTextCtrl.appendText(constructWxString(text.cstring))

proc clear*(self: TextCtrl) =
  self.rawTextCtrl.clear()
