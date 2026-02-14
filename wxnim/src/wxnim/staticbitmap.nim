import window, common_types, evthandler, gdi
import ../wxraw/types
import ../wxraw/control_raw

type
  StaticBitmap* = ref object of Control

proc newStaticBitmap*(parent: Window, bitmap: Bitmap, id: int = -1, x, y, width, height: int = -1, style: clong = 0): StaticBitmap =
  let raw = newStaticBitmapRaw(parent.rawWindow, id.cint, cast[ptr BitmapRaw](bitmap.rawObj), PointRaw(x: x.cint, y: y.cint), SizeRaw(x: width.cint, y: height.cint), style)
  result = StaticBitmap(rawObj: cast[ptr WxObjectRaw](raw)); result.initEvtHandler()
