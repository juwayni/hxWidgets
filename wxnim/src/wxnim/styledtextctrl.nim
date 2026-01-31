import window, common_types, evthandler, utils
import ../wxraw/types
import ../wxraw/textctrl_raw

type
  StyledTextCtrl* = ref object of Control

proc newStyledTextCtrl*(parent: Window, id: int = -1, x, y, width, height: int = -1, style: clong = 0): StyledTextCtrl =
  let raw = newStyledTextCtrlRaw(parent.rawWindow, id.cint, PointRaw(x: x.cint, y: y.cint), SizeRaw(x: width.cint, y: height.cint), style)
  result = StyledTextCtrl(rawObj: cast[ptr WxObjectRaw](raw)); result.initEvtHandler()

proc addText*(self: StyledTextCtrl, text: string) =
  cast[ptr StyledTextCtrlRaw](self.rawObj).addText(constructWxString(text.cstring))
