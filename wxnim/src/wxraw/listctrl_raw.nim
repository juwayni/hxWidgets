import types

proc newListItemRaw*(): ptr ListItemRaw {.importcpp: "new wxListItem()", header: "wx/listctrl.h".}
proc deleteListItemRaw*(self: ptr ListItemRaw) {.importcpp: "delete #", header: "wx/listctrl.h".}
proc setId*(self: ptr ListItemRaw, id: clong) {.importcpp: "SetId(#)", header: "wx/listctrl.h".}
proc setText*(self: ptr ListItemRaw, text: WxStringRaw) {.importcpp: "SetText(@)", header: "wx/listctrl.h".}
