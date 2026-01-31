import common_types
import ../wxraw/types
import ../wxraw/gdi_raw

type
  Colour* = ref object of Object
  Font* = ref object of Object
  Pen* = ref object of Object
  Brush* = ref object of Object

proc finalizeColour(self: Colour) =
  if self.rawObj != nil:
    deleteColourRaw(cast[ptr ColourRaw](self.rawObj))
proc newColour*(r, g, b: uint8, a: uint8 = 255): Colour =
  let raw = newColourRaw(r, g, b, a)
  new(result, finalizeColour)
  result.rawObj = cast[ptr WxObjectRaw](raw)

proc finalizeFont(self: Font) =
  if self.rawObj != nil:
    deleteFontRaw(cast[ptr FontRaw](self.rawObj))
proc newFont*(pointSize: int, family: int, style: int, weight: int, underlined: bool = false, faceName: string = ""): Font =
  let raw = newFontRaw(pointSize.cint, family.cint, style.cint, weight.cint, underlined, constructWxString(faceName.cstring))
  new(result, finalizeFont)
  result.rawObj = cast[ptr WxObjectRaw](raw)

proc finalizePen(self: Pen) =
  if self.rawObj != nil:
    deletePenRaw(cast[ptr PenRaw](self.rawObj))
proc newPen*(colour: Colour, width: int = 1, style: int = 100): Pen =
  let raw = newPenRaw(cast[ptr ColourRaw](colour.rawObj), width.cint, style.cint)
  new(result, finalizePen)
  result.rawObj = cast[ptr WxObjectRaw](raw)

proc finalizeBrush(self: Brush) =
  if self.rawObj != nil:
    deleteBrushRaw(cast[ptr BrushRaw](self.rawObj))
proc newBrush*(colour: Colour, style: int = 100): Brush =
  let raw = newBrushRaw(cast[ptr ColourRaw](colour.rawObj), style.cint)
  new(result, finalizeBrush)
  result.rawObj = cast[ptr WxObjectRaw](raw)

type
  Bitmap* = ref object of Object
  Image* = ref object of Object

proc finalizeBitmap(self: Bitmap) =
  if self.rawObj != nil:
    deleteBitmapRaw(cast[ptr BitmapRaw](self.rawObj))
proc newBitmap*(width, height: int, depth: int = -1): Bitmap =
  let raw = newBitmapRaw(width.cint, height.cint, depth.cint)
  new(result, finalizeBitmap)
  result.rawObj = cast[ptr WxObjectRaw](raw)

proc finalizeImage(self: Image) =
  if self.rawObj != nil:
    deleteImageRaw(cast[ptr ImageRaw](self.rawObj))
proc newImage*(width, height: int): Image =
  let raw = newImageRaw(width.cint, height.cint)
  new(result, finalizeImage)
  result.rawObj = cast[ptr WxObjectRaw](raw)

proc loadFile*(self: Image, name: string, type_id: int): bool =
  cast[ptr ImageRaw](self.rawObj).loadFile(constructWxString(name.cstring), type_id.cint)
