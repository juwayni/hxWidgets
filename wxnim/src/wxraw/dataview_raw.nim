import types

proc newDataViewColumnRaw*(title: WxStringRaw, renderer: ptr any, modelColumn: cint, width: cint = -1, align: cint = 0, flags: cint = 0): ptr any {.importcpp: "new wxDataViewColumn(@)", header: "wx/dataview.h".}

proc isOK*(self: DataViewItemRaw): bool {.importcpp: "#.IsOk()", header: "wx/dataview.h".}
