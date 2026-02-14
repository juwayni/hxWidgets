import types

proc drawLine*(self: ptr DCRaw, x1, y1, x2, y2: cint) {.importcpp: "DrawLine(@)", header: "wx/dc.h".}
proc drawRectangle*(self: ptr DCRaw, x, y, width, height: cint) {.importcpp: "DrawRectangle(@)", header: "wx/dc.h".}
proc drawText*(self: ptr DCRaw, text: WxStringRaw, x, y: cint) {.importcpp: "DrawText(@)", header: "wx/dc.h".}
proc clear*(self: ptr DCRaw) {.importcpp: "Clear()", header: "wx/dc.h".}
proc setPen*(self: ptr DCRaw, pen: ptr PenRaw) {.importcpp: "SetPen(#)", header: "wx/dc.h".}
proc setBrush*(self: ptr DCRaw, brush: ptr BrushRaw) {.importcpp: "SetBrush(#)", header: "wx/dc.h".}
proc setFont*(self: ptr DCRaw, font: ptr FontRaw) {.importcpp: "SetFont(#)", header: "wx/dc.h".}

proc newWindowDCRaw*(window: ptr WindowRaw): ptr WindowDCRaw {.importcpp: "new wxWindowDC(@)", header: "wx/dcclient.h".}
proc newClientDCRaw*(window: ptr WindowRaw): ptr ClientDCRaw {.importcpp: "new wxClientDC(@)", header: "wx/dcclient.h".}
proc newPaintDCRaw*(window: ptr WindowRaw): ptr PaintDCRaw {.importcpp: "new wxPaintDC(@)", header: "wx/dcclient.h".}
proc newMemoryDCRaw*(): ptr MemoryDCRaw {.importcpp: "new wxMemoryDC()", header: "wx/dcmemory.h".}
proc selectObject*(self: ptr MemoryDCRaw, bitmap: ptr BitmapRaw) {.importcpp: "SelectObject(#)", header: "wx/dcmemory.h".}

proc deleteDCRaw*(self: ptr DCRaw) {.importcpp: "delete #", header: "wx/dc.h".}
