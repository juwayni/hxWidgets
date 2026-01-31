import types

# PropertyGrid Properties
proc newBoolPropertyRaw*(label, name: WxStringRaw, value: bool): ptr WxObjectRaw {.importcpp: "new wxBoolProperty(@)", header: "wx/propgrid/props.h".}
proc newIntPropertyRaw*(label, name: WxStringRaw, value: clonglong): ptr WxObjectRaw {.importcpp: "new wxIntProperty(@)", header: "wx/propgrid/props.h".}
proc newStringPropertyRaw*(label, name: WxStringRaw, value: WxStringRaw): ptr WxObjectRaw {.importcpp: "new wxStringProperty(@)", header: "wx/propgrid/props.h".}
proc newEnumPropertyRaw*(label, name: WxStringRaw, labels: ptr any, values: ptr any, value: cint): ptr WxObjectRaw {.importcpp: "new wxEnumProperty(@)", header: "wx/propgrid/props.h".}

proc appendProperty*(self: ptr PropertyGridRaw, prop: ptr WxObjectRaw): ptr WxObjectRaw {.importcpp: "Append(@)", header: "wx/propgrid/propgrid.h".}
