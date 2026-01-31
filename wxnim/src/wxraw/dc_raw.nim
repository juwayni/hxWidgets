import types

proc drawLine*(self: ptr DCRaw, x1, y1, x2, y2: cint) {.importcpp: "DrawLine(@)", header: "wx/dc.h".}
proc drawRectangle*(self: ptr DCRaw, x, y, width, height: cint) {.importcpp: "DrawRectangle(@)", header: "wx/dc.h".}
proc drawText*(self: ptr DCRaw, text: WxStringRaw, x, y: cint) {.importcpp: "DrawText(@)", header: "wx/dc.h".}
proc clear*(self: ptr DCRaw) {.importcpp: "Clear()", header: "wx/dc.h".}

proc newPaintDCRaw*(window: ptr WindowRaw): ptr PaintDCRaw {.importcpp: "new wxPaintDC(@)", header: "wx/dcclient.h".}
proc newClientDCRaw*(window: ptr WindowRaw): ptr ClientDCRaw {.importcpp: "new wxClientDC(@)", header: "wx/dcclient.h".}
