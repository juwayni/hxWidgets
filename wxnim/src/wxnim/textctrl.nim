import window, common_types, evthandler, utils
import ../wxraw/types
import ../wxraw/textctrl_raw

type
  TextCtrl* = ref object of Control

proc rawTextCtrl*(self: TextCtrl): ptr TextCtrlRaw = cast[ptr TextCtrlRaw](self.rawObj)

proc newTextCtrl*(parent: Window, text: string = "", id: int = -1, x, y, width, height: int = -1, style: clong = 0): TextCtrl =
  let raw = newTextCtrlRaw(parent.rawWindow, id.cint, constructWxString(text.cstring), PointRaw(x: x.cint, y: y.cint), SizeRaw(x: width.cint, y: height.cint), style)
  result = TextCtrl(rawObj: cast[ptr WxObjectRaw](raw)); result.initEvtHandler()

proc value*(self: TextCtrl): string = $(self.rawTextCtrl.getValue())
proc `value=`*(self: TextCtrl, val: string) = self.rawTextCtrl.setValue(constructWxString(val.cstring))
proc appendText*(self: TextCtrl, text: string) = self.rawTextCtrl.appendText(constructWxString(text.cstring))
proc clear*(self: TextCtrl) = self.rawTextCtrl.clear()
proc editable*(self: TextCtrl): bool = self.rawTextCtrl.isEditable()
proc `editable=`*(self: TextCtrl, value: bool) = self.rawTextCtrl.setEditable(value)
proc insertionPoint*(self: TextCtrl): int = int(self.rawTextCtrl.getInsertionPoint())
proc `insertionPoint=`*(self: TextCtrl, value: int) = self.rawTextCtrl.setInsertionPoint(value.clong)
