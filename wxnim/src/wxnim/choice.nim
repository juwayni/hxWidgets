import window, common_types, evthandler
import ../wxraw/types
import ../wxraw/control_raw

type
  Choice* = ref object of Control

proc newChoice*(parent: Window, id: int = -1, x, y, width, height: int = -1, style: clong = 0): Choice =
  let raw = newChoiceRaw(parent.rawWindow, id.cint, PointRaw(x: x.cint, y: y.cint), SizeRaw(x: width.cint, y: height.cint), style)
  result = Choice(rawObj: cast[ptr WxObjectRaw](raw)); result.initEvtHandler()

proc append*(self: Choice, item: string): int = int(cast[ptr ChoiceRaw](self.rawObj).append(constructWxString(item.cstring)))
proc selection*(self: Choice): int = int(cast[ptr ChoiceRaw](self.rawObj).getSelection())
proc `selection=`*(self: Choice, n: int) = cast[ptr ChoiceRaw](self.rawObj).setSelection(n.cint)
