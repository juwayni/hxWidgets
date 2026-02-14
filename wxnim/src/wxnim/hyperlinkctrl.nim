import window, common_types, evthandler, utils
import ../wxraw/types
import ../wxraw/advanced_widgets_raw

type
  HyperlinkCtrl* = ref object of Control

proc newHyperlinkCtrl*(parent: Window, label: string, url: string, id: int = -1, x, y, width, height: int = -1, style: clong = 0): HyperlinkCtrl =
  let raw = newHyperlinkCtrlRaw(parent.rawWindow, id.cint, constructWxString(label.cstring), constructWxString(url.cstring), PointRaw(x: x.cint, y: y.cint), SizeRaw(x: width.cint, y: height.cint), style)
  result = HyperlinkCtrl(rawObj: cast[ptr WxObjectRaw](raw)); result.initEvtHandler()
