import window, common_types, evthandler
import ../wxraw/types
import ../wxraw/control_raw

type
  ScrollBar* = ref object of Control

proc newScrollBar*(parent: Window, id: int = -1, x, y, width, height: int = -1, style: clong = 0): ScrollBar =
  let raw = newScrollBarRaw(parent.rawWindow, id.cint, PointRaw(x: x.cint, y: y.cint), SizeRaw(x: width.cint, y: height.cint), style)
  result = ScrollBar(rawObj: cast[ptr WxObjectRaw](raw)); result.initEvtHandler()

proc setScrollbar*(self: ScrollBar, position, thumbSize, range, pageSize: int, refresh: bool = true) =
  cast[ptr ScrollBarRaw](self.rawObj).setScrollbar(position.cint, thumbSize.cint, range.cint, pageSize.cint, refresh)
