import types

type
  ArrayStringRaw* {.importcpp: "wxArrayString", header: "wx/arrstr.h", pure.} = object

proc newArrayStringRaw*(): ptr ArrayStringRaw {.importcpp: "new wxArrayString()", header: "wx/arrstr.h".}
proc deleteArrayStringRaw*(self: ptr ArrayStringRaw) {.importcpp: "delete #", header: "wx/arrstr.h".}
proc add*(self: ptr ArrayStringRaw, str: WxStringRaw): cint {.importcpp: "Add(@)", header: "wx/arrstr.h".}
proc getCount*(self: ptr ArrayStringRaw): cint {.importcpp: "GetCount()", header: "wx/arrstr.h".}
proc item*(self: ptr ArrayStringRaw, index: cint): WxStringRaw {.importcpp: "Item(@)", header: "wx/arrstr.h".}
