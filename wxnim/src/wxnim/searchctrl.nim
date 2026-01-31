import window, common_types, evthandler, utils
import ../wxraw/types
import ../wxraw/textctrl_raw

type
  SearchCtrl* = ref object of Control

proc newSearchCtrl*(parent: Window, value: string = "", id: int = -1, x, y, width, height: int = -1, style: clong = 0): SearchCtrl =
  let raw = newSearchCtrlRaw(parent.rawWindow, id.cint, constructWxString(value.cstring), PointRaw(x: x.cint, y: y.cint), SizeRaw(x: width.cint, y: height.cint), style)
  result = SearchCtrl(rawObj: cast[ptr WxObjectRaw](raw)); result.initEvtHandler()
