import window, common_types, evthandler
import ../wxraw/types
import ../wxraw/advanced_widgets_raw

type
  ScrolledWindow* = ref object of Window

proc newScrolledWindow*(parent: Window, id: int = -1, x: int = -1, y: int = -1, width: int = -1, height: int = -1, style: clong = 0): ScrolledWindow =
  let raw = newScrolledWindowRaw(parent.rawWindow, id.cint, PointRaw(x: x.cint, y: y.cint), SizeRaw(x: width.cint, y: height.cint), style)
  result = ScrolledWindow(rawObj: cast[ptr WxObjectRaw](raw))
  result.initEvtHandler()

proc setScrollbars*(self: ScrolledWindow, pixelsPerUnitX, pixelsPerUnitY, noUnitsX, noUnitsY, xPos: int = 0, yPos: int = 0, noRefresh: bool = false) =
  cast[ptr ScrolledWindowRaw](self.rawObj).setScrollbars(pixelsPerUnitX.cint, pixelsPerUnitY.cint, noUnitsX.cint, noUnitsY.cint, xPos.cint, yPos.cint, noRefresh)
