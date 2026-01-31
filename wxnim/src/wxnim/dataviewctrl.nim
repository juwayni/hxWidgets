import window, common_types, evthandler, utils
import ../wxraw/types
import ../wxraw/advanced_widgets_raw

type
  DataViewCtrl* = ref object of Control

proc newDataViewCtrl*(parent: Window, id: int = -1, x, y, width, height: int = -1, style: clong = 0): DataViewCtrl =
  let raw = newDataViewCtrlRaw(parent.rawWindow, id.cint, PointRaw(x: x.cint, y: y.cint), SizeRaw(x: width.cint, y: height.cint), style)
  result = DataViewCtrl(rawObj: cast[ptr WxObjectRaw](raw)); result.initEvtHandler()
