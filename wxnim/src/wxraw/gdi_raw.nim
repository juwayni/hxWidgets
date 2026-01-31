import types

# Colour
proc newColourRaw*(): ptr ColourRaw {.importcpp: "new wxColour()", header: "wx/colour.h".}
proc newColourRaw*(r, g, b: uint8, a: uint8 = 255): ptr ColourRaw {.importcpp: "new wxColour(@)", header: "wx/colour.h".}
proc deleteColourRaw*(self: ptr ColourRaw) {.importcpp: "delete #", header: "wx/colour.h".}

# Font
proc newFontRaw*(pointSize: cint, family: cint, style: cint, weight: cint, underlined: bool = false, faceName: WxStringRaw = constructWxString("")): ptr FontRaw {.importcpp: "new wxFont(@)", header: "wx/font.h".}
proc deleteFontRaw*(self: ptr FontRaw) {.importcpp: "delete #", header: "wx/font.h".}

# Pen
proc newPenRaw*(colour: ptr ColourRaw, width: cint = 1, style: cint = 100): ptr PenRaw {.importcpp: "new wxPen(@)", header: "wx/pen.h".}
proc deletePenRaw*(self: ptr PenRaw) {.importcpp: "delete #", header: "wx/pen.h".}

# Brush
proc newBrushRaw*(colour: ptr ColourRaw, style: cint = 100): ptr BrushRaw {.importcpp: "new wxBrush(@)", header: "wx/brush.h".}
proc deleteBrushRaw*(self: ptr BrushRaw) {.importcpp: "delete #", header: "wx/brush.h".}

# Bitmap
proc newBitmapRaw*(): ptr BitmapRaw {.importcpp: "new wxBitmap()", header: "wx/bitmap.h".}
proc newBitmapRaw*(width, height: cint, depth: cint = -1): ptr BitmapRaw {.importcpp: "new wxBitmap(@)", header: "wx/bitmap.h".}
proc deleteBitmapRaw*(self: ptr BitmapRaw) {.importcpp: "delete #", header: "wx/bitmap.h".}

# Image
proc newImageRaw*(): ptr ImageRaw {.importcpp: "new wxImage()", header: "wx/image.h".}
proc newImageRaw*(width, height: cint): ptr ImageRaw {.importcpp: "new wxImage(@)", header: "wx/image.h".}
proc loadFile*(self: ptr ImageRaw, name: WxStringRaw, type_id: cint): bool {.importcpp: "LoadFile(@)", header: "wx/image.h".}
proc deleteImageRaw*(self: ptr ImageRaw) {.importcpp: "delete #", header: "wx/image.h".}

# Icon
proc newIconRaw*(): ptr IconRaw {.importcpp: "new wxIcon()", header: "wx/icon.h".}
proc deleteIconRaw*(self: ptr IconRaw) {.importcpp: "delete #", header: "wx/icon.h".}
proc copyFromBitmap*(self: ptr IconRaw, bitmap: ptr BitmapRaw) {.importcpp: "CopyFromBitmap(#)", header: "wx/icon.h".}

# Cursor
proc newCursorRaw*(): ptr CursorRaw {.importcpp: "new wxCursor()", header: "wx/cursor.h".}
proc deleteCursorRaw*(self: ptr CursorRaw) {.importcpp: "delete #", header: "wx/cursor.h".}

# ImageList
proc newImageListRaw*(width, height: cint, mask: bool = true, initialCount: cint = 1): ptr ImageListRaw {.importcpp: "new wxImageList(@)", header: "wx/imaglist.h".}
proc deleteImageListRaw*(self: ptr ImageListRaw) {.importcpp: "delete #", header: "wx/imaglist.h".}
proc add*(self: ptr ImageListRaw, bitmap: ptr BitmapRaw): cint {.importcpp: "Add(#)", header: "wx/imaglist.h".}

# Region
proc newRegionRaw*(): ptr RegionRaw {.importcpp: "new wxRegion()", header: "wx/region.h".}
proc deleteRegionRaw*(self: ptr RegionRaw) {.importcpp: "delete #", header: "wx/region.h".}

# GraphicsContext
proc createGraphicsContextRaw*(window: ptr WindowRaw): ptr GraphicsContextRaw {.importcpp: "wxGraphicsContext::Create(@)", header: "wx/graphics.h".}
proc createGraphicsContextRaw*(dc: ptr WindowDCRaw): ptr GraphicsContextRaw {.importcpp: "wxGraphicsContext::Create(@)", header: "wx/graphics.h".}
proc strokeLine*(self: ptr GraphicsContextRaw, x1, y1, x2, y2: cdouble) {.importcpp: "StrokeLine(@)", header: "wx/graphics.h".}
proc drawRectangle*(self: ptr GraphicsContextRaw, x, y, w, h: cdouble) {.importcpp: "DrawRectangle(@)", header: "wx/graphics.h".}
proc setPen*(self: ptr GraphicsContextRaw, pen: ptr PenRaw) {.importcpp: "SetPen(#)", header: "wx/graphics.h".}
proc setBrush*(self: ptr GraphicsContextRaw, brush: ptr BrushRaw) {.importcpp: "SetBrush(#)", header: "wx/graphics.h".}
proc deleteGraphicsContextRaw*(self: ptr GraphicsContextRaw) {.importcpp: "delete #", header: "wx/graphics.h".}
