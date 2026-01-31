import types

proc newStaticTextRaw*(parent: ptr WindowRaw, id: cint, label: WxStringRaw, pos: PointRaw, size: SizeRaw, style: clong): ptr StaticTextRaw {.importcpp: "new wxStaticText(@)", header: "wx/stattext.h".}

proc newCheckBoxRaw*(parent: ptr WindowRaw, id: cint, label: WxStringRaw, pos: PointRaw, size: SizeRaw, style: clong): ptr CheckBoxRaw {.importcpp: "new wxCheckBox(@)", header: "wx/checkbox.h".}
proc getValue*(self: ptr CheckBoxRaw): bool {.importcpp: "GetValue()", header: "wx/checkbox.h".}
proc setValue*(self: ptr CheckBoxRaw, state: bool) {.importcpp: "SetValue(@)", header: "wx/checkbox.h".}

proc newRadioButtonRaw*(parent: ptr WindowRaw, id: cint, label: WxStringRaw, pos: PointRaw, size: SizeRaw, style: clong): ptr RadioButtonRaw {.importcpp: "new wxRadioButton(@)", header: "wx/radiobut.h".}
proc getValue*(self: ptr RadioButtonRaw): bool {.importcpp: "GetValue()", header: "wx/radiobut.h".}
proc setValue*(self: ptr RadioButtonRaw, value: bool) {.importcpp: "SetValue(@)", header: "wx/radiobut.h".}
