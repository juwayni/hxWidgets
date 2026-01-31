import common_types, gdi
import ../wxraw/types
import ../wxraw/dc_raw

type
  DC* = ref object of Object
  WindowDC* = ref object of DC
  ClientDC* = ref object of WindowDC
  PaintDC* = ref object of WindowDC
  MemoryDC* = ref object of WindowDC

proc rawDC*(self: DC): ptr DCRaw = cast[ptr DCRaw](self.rawObj)

proc drawLine*(self: DC, x1, y1, x2, y2: int) = self.rawDC.drawLine(x1.cint, y1.cint, x2.cint, y2.cint)
proc drawRectangle*(self: DC, x, y, width, height: int) = self.rawDC.drawRectangle(x.cint, y.cint, width.cint, height.cint)
proc drawText*(self: DC, text: string, x, y: int) = self.rawDC.drawText(constructWxString(text.cstring), x.cint, y.cint)
proc clear*(self: DC) = self.rawDC.clear()

proc setPen*(self: DC, pen: Pen) = self.rawDC.setPen(cast[ptr PenRaw](pen.rawObj))
proc setBrush*(self: DC, brush: Brush) = self.rawDC.setBrush(cast[ptr BrushRaw](brush.rawObj))
proc setFont*(self: DC, font: Font) = self.rawDC.setFont(cast[ptr FontRaw](font.rawObj))

proc finalizeDC(self: DC) =
  if self.rawObj != nil: deleteDCRaw(cast[ptr DCRaw](self.rawObj))

proc newWindowDC*(window: Window): WindowDC =
  let raw = newWindowDCRaw(window.rawWindow)
  new(result, finalizeDC); result.rawObj = cast[ptr WxObjectRaw](raw)

proc newClientDC*(window: Window): ClientDC =
  let raw = newClientDCRaw(window.rawWindow)
  new(result, finalizeDC); result.rawObj = cast[ptr WxObjectRaw](raw)

proc newPaintDC*(window: Window): PaintDC =
  let raw = newPaintDCRaw(window.rawWindow)
  new(result, finalizeDC); result.rawObj = cast[ptr WxObjectRaw](raw)

proc newMemoryDC*(): MemoryDC =
  let raw = newMemoryDCRaw()
  new(result, finalizeDC); result.rawObj = cast[ptr WxObjectRaw](raw)

proc selectObject*(self: MemoryDC, bitmap: Bitmap) =
  cast[ptr MemoryDCRaw](self.rawObj).selectObject(cast[ptr BitmapRaw](bitmap.rawObj))
