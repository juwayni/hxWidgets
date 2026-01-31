import types

proc fromBitmapRaw*(bitmap: ptr BitmapRaw): ptr BitmapBundleRaw {.importcpp: "new wxBitmapBundle(wxBitmapBundle::FromBitmap(@))", header: "wx/bmpbndl.h".}
proc deleteBitmapBundleRaw*(self: ptr BitmapBundleRaw) {.importcpp: "delete #", header: "wx/bmpbndl.h".}
