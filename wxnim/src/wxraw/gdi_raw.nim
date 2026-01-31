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
