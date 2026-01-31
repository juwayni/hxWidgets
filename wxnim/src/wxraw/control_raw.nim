import types

proc getLabel*(self: ptr ControlRaw): WxStringRaw {.importcpp: "GetLabel()", header: "wx/control.h".}
proc setLabel*(self: ptr ControlRaw, label: WxStringRaw) {.importcpp: "SetLabel(@)", header: "wx/control.h".}
proc setLabelMarkup*(self: ptr ControlRaw, markup: WxStringRaw): bool {.importcpp: "SetLabelMarkup(@)", header: "wx/control.h".}

# Choice
proc newChoiceRaw*(parent: ptr WindowRaw, id: cint, pos: PointRaw, size: SizeRaw, style: clong): ptr ChoiceRaw {.importcpp: "new wxChoice(@)", header: "wx/choice.h".}
proc append*(self: ptr ChoiceRaw, item: WxStringRaw): cint {.importcpp: "Append(#)", header: "wx/choice.h".}
proc getSelection*(self: ptr ChoiceRaw): cint {.importcpp: "GetSelection()", header: "wx/choice.h".}
proc setSelection*(self: ptr ChoiceRaw, n: cint) {.importcpp: "SetSelection(#)", header: "wx/choice.h".}

# ComboBox
proc newComboBoxRaw*(parent: ptr WindowRaw, id: cint, value: WxStringRaw, pos: PointRaw, size: SizeRaw, style: clong): ptr ComboBoxRaw {.importcpp: "new wxComboBox(@)", header: "wx/combobox.h".}
proc append*(self: ptr ComboBoxRaw, item: WxStringRaw): cint {.importcpp: "Append(#)", header: "wx/combobox.h".}

# Gauge
proc newGaugeRaw*(parent: ptr WindowRaw, id: cint, range: cint, pos: PointRaw, size: SizeRaw, style: clong): ptr GaugeRaw {.importcpp: "new wxGauge(@)", header: "wx/gauge.h".}
proc setValue*(self: ptr GaugeRaw, pos: cint) {.importcpp: "SetValue(#)", header: "wx/gauge.h".}

# ListBox
proc newListBoxRaw*(parent: ptr WindowRaw, id: cint, pos: PointRaw, size: SizeRaw, style: clong): ptr ListBoxRaw {.importcpp: "new wxListBox(@)", header: "wx/listbox.h".}
proc append*(self: ptr ListBoxRaw, item: WxStringRaw): cint {.importcpp: "Append(#)", header: "wx/listbox.h".}

# ScrollBar
proc newScrollBarRaw*(parent: ptr WindowRaw, id: cint, pos: PointRaw, size: SizeRaw, style: clong): ptr ScrollBarRaw {.importcpp: "new wxScrollBar(@)", header: "wx/scrolbar.h".}
proc setScrollbar*(self: ptr ScrollBarRaw, position, thumbSize, range, pageSize: cint, refresh: bool = true) {.importcpp: "SetScrollbar(@)", header: "wx/scrolbar.h".}

# Slider
proc newSliderRaw*(parent: ptr WindowRaw, id: cint, value, minValue, maxValue: cint, pos: PointRaw, size: SizeRaw, style: clong): ptr SliderRaw {.importcpp: "new wxSlider(@)", header: "wx/slider.h".}
proc getValue*(self: ptr SliderRaw): cint {.importcpp: "GetValue()", header: "wx/slider.h".}
proc setValue*(self: ptr SliderRaw, value: cint) {.importcpp: "SetValue(#)", header: "wx/slider.h".}

# SpinCtrl
proc newSpinCtrlRaw*(parent: ptr WindowRaw, id: cint, value: WxStringRaw, pos: PointRaw, size: SizeRaw, style: clong): ptr SpinCtrlRaw {.importcpp: "new wxSpinCtrl(@)", header: "wx/spinctrl.h".}
proc getValue*(self: ptr SpinCtrlRaw): cint {.importcpp: "GetValue()", header: "wx/spinctrl.h".}
proc setValue*(self: ptr SpinCtrlRaw, value: cint) {.importcpp: "SetValue(#)", header: "wx/spinctrl.h".}

# StaticBitmap
proc newStaticBitmapRaw*(parent: ptr WindowRaw, id: cint, bitmap: ptr BitmapRaw, pos: PointRaw, size: SizeRaw, style: clong): ptr StaticBitmapRaw {.importcpp: "new wxStaticBitmap(@)", header: "wx/statbmp.h".}

# StaticBox
proc newStaticBoxRaw*(parent: ptr WindowRaw, id: cint, label: WxStringRaw, pos: PointRaw, size: SizeRaw, style: clong): ptr StaticBoxRaw {.importcpp: "new wxStaticBox(@)", header: "wx/statbox.h".}

# StaticLine
proc newStaticLineRaw*(parent: ptr WindowRaw, id: cint, pos: PointRaw, size: SizeRaw, style: clong): ptr StaticLineRaw {.importcpp: "new wxStaticLine(@)", header: "wx/statline.h".}

# ToggleButton
proc newToggleButtonRaw*(parent: ptr WindowRaw, id: cint, label: WxStringRaw, pos: PointRaw, size: SizeRaw, style: clong): ptr ToggleButtonRaw {.importcpp: "new wxToggleButton(@)", header: "wx/tglbtn.h".}
proc getValue*(self: ptr ToggleButtonRaw): bool {.importcpp: "GetValue()", header: "wx/tglbtn.h".}
proc setValue*(self: ptr ToggleButtonRaw, state: bool) {.importcpp: "SetValue(#)", header: "wx/tglbtn.h".}

# Already added: StaticText, CheckBox, RadioButton
proc newStaticTextRaw*(parent: ptr WindowRaw, id: cint, label: WxStringRaw, pos: PointRaw, size: SizeRaw, style: clong): ptr StaticTextRaw {.importcpp: "new wxStaticText(@)", header: "wx/stattext.h".}
proc newCheckBoxRaw*(parent: ptr WindowRaw, id: cint, label: WxStringRaw, pos: PointRaw, size: SizeRaw, style: clong): ptr CheckBoxRaw {.importcpp: "new wxCheckBox(@)", header: "wx/checkbox.h".}
proc getValue*(self: ptr CheckBoxRaw): bool {.importcpp: "GetValue()", header: "wx/checkbox.h".}
proc setValue*(self: ptr CheckBoxRaw, state: bool) {.importcpp: "SetValue(@)", header: "wx/checkbox.h".}
proc newRadioButtonRaw*(parent: ptr WindowRaw, id: cint, label: WxStringRaw, pos: PointRaw, size: SizeRaw, style: clong): ptr RadioButtonRaw {.importcpp: "new wxRadioButton(@)", header: "wx/radiobut.h".}
proc getValue*(self: ptr RadioButtonRaw): bool {.importcpp: "GetValue()", header: "wx/radiobut.h".}
proc setValue*(self: ptr RadioButtonRaw, value: bool) {.importcpp: "SetValue(@)", header: "wx/radiobut.h".}
