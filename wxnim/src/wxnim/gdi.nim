import common_types, object
import ../wxraw/types
import ../wxraw/gdi_raw

type
  Colour* = ref object of Object
  Font* = ref object of Object
  Pen* = ref object of Object
  Brush* = ref object of Object
  Bitmap* = ref object of Object
  Icon* = ref object of Object
  Cursor* = ref object of Object
  Image* = ref object of Object
  ImageList* = ref object of Object
  Region* = ref object of Object
  GraphicsContext* = ref object of Object

proc finalizeColour(self: Colour) =
  if self.rawObj != nil: deleteColourRaw(cast[ptr ColourRaw](self.rawObj))
proc newColour*(r, g, b: uint8, a: uint8 = 255): Colour =
  let raw = newColourRaw(r, g, b, a)
  new(result, finalizeColour); result.rawObj = cast[ptr WxObjectRaw](raw)

proc finalizeFont(self: Font) =
  if self.rawObj != nil: deleteFontRaw(cast[ptr FontRaw](self.rawObj))
proc newFont*(pointSize: int, family: int, style: int, weight: int, underlined: bool = false, faceName: string = ""): Font =
  let raw = newFontRaw(pointSize.cint, family.cint, style.cint, weight.cint, underlined, constructWxString(faceName.cstring))
  new(result, finalizeFont); result.rawObj = cast[ptr WxObjectRaw](raw)

proc finalizePen(self: Pen) =
  if self.rawObj != nil: deletePenRaw(cast[ptr PenRaw](self.rawObj))
proc newPen*(colour: Colour, width: int = 1, style: int = 100): Pen =
  let raw = newPenRaw(cast[ptr ColourRaw](colour.rawObj), width.cint, style.cint)
  new(result, finalizePen); result.rawObj = cast[ptr WxObjectRaw](raw)

proc finalizeBrush(self: Brush) =
  if self.rawObj != nil: deleteBrushRaw(cast[ptr BrushRaw](self.rawObj))
proc newBrush*(colour: Colour, style: int = 100): Brush =
  let raw = newBrushRaw(cast[ptr ColourRaw](colour.rawObj), style.cint)
  new(result, finalizeBrush); result.rawObj = cast[ptr WxObjectRaw](raw)

proc finalizeBitmap(self: Bitmap) =
  if self.rawObj != nil: deleteBitmapRaw(cast[ptr BitmapRaw](self.rawObj))
proc newBitmap*(width, height: int, depth: int = -1): Bitmap =
  let raw = newBitmapRaw(width.cint, height.cint, depth.cint)
  new(result, finalizeBitmap); result.rawObj = cast[ptr WxObjectRaw](raw)

proc finalizeIcon(self: Icon) =
  if self.rawObj != nil: deleteIconRaw(cast[ptr IconRaw](self.rawObj))
proc newIcon*(): Icon =
  let raw = newIconRaw()
  new(result, finalizeIcon); result.rawObj = cast[ptr WxObjectRaw](raw)
proc copyFromBitmap*(self: Icon, bitmap: Bitmap) =
  cast[ptr IconRaw](self.rawObj).copyFromBitmap(cast[ptr BitmapRaw](bitmap.rawObj))

proc finalizeCursor(self: Cursor) =
  if self.rawObj != nil: deleteCursorRaw(cast[ptr CursorRaw](self.rawObj))
proc newCursor*(): Cursor =
  let raw = newCursorRaw()
  new(result, finalizeCursor); result.rawObj = cast[ptr WxObjectRaw](raw)

proc finalizeImage(self: Image) =
  if self.rawObj != nil: deleteImageRaw(cast[ptr ImageRaw](self.rawObj))
proc newImage*(width, height: int): Image =
  let raw = newImageRaw(width.cint, height.cint)
  new(result, finalizeImage); result.rawObj = cast[ptr WxObjectRaw](raw)
proc loadFile*(self: Image, name: string, type_id: int): bool =
  cast[ptr ImageRaw](self.rawObj).loadFile(constructWxString(name.cstring), type_id.cint)

proc finalizeImageList(self: ImageList) =
  if self.rawObj != nil: deleteImageListRaw(cast[ptr ImageListRaw](self.rawObj))
proc newImageList*(width, height: int, mask: bool = true, initialCount: int = 1): ImageList =
  let raw = newImageListRaw(width.cint, height.cint, mask, initialCount.cint)
  new(result, finalizeImageList); result.rawObj = cast[ptr WxObjectRaw](raw)
proc add*(self: ImageList, bitmap: Bitmap): int =
  int(cast[ptr ImageListRaw](self.rawObj).add(cast[ptr BitmapRaw](bitmap.rawObj)))

proc finalizeRegion(self: Region) =
  if self.rawObj != nil: deleteRegionRaw(cast[ptr RegionRaw](self.rawObj))
proc newRegion*(): Region =
  let raw = newRegionRaw()
  new(result, finalizeRegion); result.rawObj = cast[ptr WxObjectRaw](raw)

proc finalizeGraphicsContext(self: GraphicsContext) =
  if self.rawObj != nil: deleteGraphicsContextRaw(cast[ptr GraphicsContextRaw](self.rawObj))
proc newGraphicsContext*(window: Window): GraphicsContext =
  let raw = createGraphicsContextRaw(window.rawWindow)
  new(result, finalizeGraphicsContext); result.rawObj = cast[ptr WxObjectRaw](raw)

proc strokeLine*(self: GraphicsContext, x1, y1, x2, y2: float) = cast[ptr GraphicsContextRaw](self.rawObj).strokeLine(x1, y1, x2, y2)
proc drawRectangle*(self: GraphicsContext, x, y, w, h: float) = cast[ptr GraphicsContextRaw](self.rawObj).drawRectangle(x, y, w, h)
proc `pen=`*(self: GraphicsContext, pen: Pen) = cast[ptr GraphicsContextRaw](self.rawObj).setPen(cast[ptr PenRaw](pen.rawObj))
proc `brush=`*(self: GraphicsContext, brush: Brush) = cast[ptr GraphicsContextRaw](self.rawObj).setBrush(cast[ptr BrushRaw](brush.rawObj))
