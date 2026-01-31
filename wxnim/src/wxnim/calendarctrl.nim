import window, common_types, evthandler, utils
import ../wxraw/types
import ../wxraw/advanced_widgets_raw

type
  CalendarCtrl* = ref object of Control

proc newCalendarCtrl*(parent: Window, id: int = -1, x, y, width, height: int = -1, style: clong = 0): CalendarCtrl =
  let raw = newCalendarCtrlRaw(parent.rawWindow, id.cint, PointRaw(x: x.cint, y: y.cint), SizeRaw(x: width.cint, y: height.cint), style)
  result = CalendarCtrl(rawObj: cast[ptr WxObjectRaw](raw)); result.initEvtHandler()
