import types

# AnyButton
proc setBitmap*(self: ptr AnyButtonRaw, bitmap: ptr BitmapRaw) {.importcpp: "SetBitmap(#)", header: "wx/anybutton.h".}
proc setBitmapPosition*(self: ptr AnyButtonRaw, dir: cint) {.importcpp: "SetBitmapPosition(#)", header: "wx/anybutton.h".}

# Button
proc newButtonRaw*(parent: ptr WindowRaw, id: cint, label: WxStringRaw, pos: PointRaw, size: SizeRaw, style: clong): ptr ButtonRaw {.importcpp: "new wxButton(@)", header: "wx/button.h".}
