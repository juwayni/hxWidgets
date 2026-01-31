import common_types
import ../wxraw/types
import ../wxraw/dc_raw

type
  DC* = ref object of Object
  PaintDC* = ref object of DC
  ClientDC* = ref object of DC

proc rawDC*(self: DC): ptr DCRaw =
  cast[ptr DCRaw](self.rawObj)

proc drawLine*(self: DC, x1, y1, x2, y2: int) =
  self.rawDC.drawLine(x1.cint, y1.cint, x2.cint, y2.cint)

proc drawRectangle*(self: DC, x, y, width, height: int) =
  self.rawDC.drawRectangle(x.cint, y.cint, width.cint, height.cint)

proc drawText*(self: DC, text: string, x, y: int) =
  self.rawDC.drawText(constructWxString(text.cstring), x.cint, y.cint)

proc clear*(self: DC) =
  self.rawDC.clear()

proc newPaintDC*(window: Window): PaintDC =
  let raw = newPaintDCRaw(window.rawWindow)
  result = PaintDC(rawObj: cast[ptr WxObjectRaw](raw))

proc newClientDC*(window: Window): ClientDC =
  let raw = newClientDCRaw(window.rawWindow)
  result = ClientDC(rawObj: cast[ptr WxObjectRaw](raw))
