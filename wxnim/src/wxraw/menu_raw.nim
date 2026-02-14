import types

proc newMenuBarRaw*(style: clong = 0): ptr MenuBarRaw {.importcpp: "new wxMenuBar(@)", header: "wx/menu.h".}
proc append*(self: ptr MenuBarRaw, menu: ptr MenuRaw, title: WxStringRaw): bool {.importcpp: "Append(@)", header: "wx/menu.h".}

proc newMenuRaw*(title: WxStringRaw = constructWxString("")): ptr MenuRaw {.importcpp: "new wxMenu(@)", header: "wx/menu.h".}
proc append*(self: ptr MenuRaw, id: cint, item: WxStringRaw, help: WxStringRaw = constructWxString(""), kind: cint = 0): ptr MenuItemRaw {.importcpp: "Append(@)", header: "wx/menu.h".}
proc appendSeparator*(self: ptr MenuRaw) {.importcpp: "AppendSeparator()", header: "wx/menu.h".}
