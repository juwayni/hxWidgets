import types

proc newGraphicsPathRaw*(): ptr GraphicsObjectRaw {.importcpp: "wxGraphicsPath::Create()", header: "wx/graphics.h".}
proc moveToPoint*(self: ptr GraphicsObjectRaw, x, y: cdouble) {.importcpp: "MoveToPoint(@)", header: "wx/graphics.h".}
proc addLineToPoint*(self: ptr GraphicsObjectRaw, x, y: cdouble) {.importcpp: "AddLineToPoint(@)", header: "wx/graphics.h".}
# ... many more GraphicsPath methods

proc newGDCFromDCRaw*(dc: ptr WindowDCRaw): ptr DCRaw {.importcpp: "new wxGCDC(@)", header: "wx/gcdc.h".}
proc newBufferedDCRaw*(dc: ptr DCRaw, buffer: ptr BitmapRaw, style: cint): ptr DCRaw {.importcpp: "new wxBufferedDC(@)", header: "wx/dcbuffer.h".}
