import types

proc newVariantRaw*(): ptr VariantRaw {.importcpp: "new wxVariant()", header: "wx/variant.h".}
proc newVariantRaw*(val: bool): ptr VariantRaw {.importcpp: "new wxVariant(@)", header: "wx/variant.h".}
proc newVariantRaw*(val: cint): ptr VariantRaw {.importcpp: "new wxVariant(@)", header: "wx/variant.h".}
proc newVariantRaw*(val: WxStringRaw): ptr VariantRaw {.importcpp: "new wxVariant(@)", header: "wx/variant.h".}
proc deleteVariantRaw*(self: ptr VariantRaw) {.importcpp: "delete #", header: "wx/variant.h".}

proc getBool*(self: ptr VariantRaw): bool {.importcpp: "GetBool()", header: "wx/variant.h".}
proc getLong*(self: ptr VariantRaw): clong {.importcpp: "GetLong()", header: "wx/variant.h".}
proc getString*(self: ptr VariantRaw): WxStringRaw {.importcpp: "GetString()", header: "wx/variant.h".}
