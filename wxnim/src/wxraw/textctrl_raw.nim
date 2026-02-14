import types

proc newTextCtrlRaw*(parent: ptr WindowRaw, id: cint, value: WxStringRaw, pos: PointRaw, size: SizeRaw, style: clong): ptr TextCtrlRaw {.importcpp: "new wxTextCtrl(@)", header: "wx/textctrl.h".}
proc getValue*(self: ptr TextCtrlRaw): WxStringRaw {.importcpp: "GetValue()", header: "wx/textctrl.h".}
proc setValue*(self: ptr TextCtrlRaw, value: WxStringRaw) {.importcpp: "SetValue(@)", header: "wx/textctrl.h".}
proc appendText*(self: ptr TextCtrlRaw, text: WxStringRaw) {.importcpp: "AppendText(@)", header: "wx/textctrl.h".}
proc clear*(self: ptr TextCtrlRaw) {.importcpp: "Clear()", header: "wx/textctrl.h".}
proc setEditable*(self: ptr TextCtrlRaw, editable: bool) {.importcpp: "SetEditable(#)", header: "wx/textctrl.h".}
proc isEditable*(self: ptr TextCtrlRaw): bool {.importcpp: "IsEditable()", header: "wx/textctrl.h".}
proc setInsertionPoint*(self: ptr TextCtrlRaw, pos: clong) {.importcpp: "SetInsertionPoint(#)", header: "wx/textctrl.h".}
proc getInsertionPoint*(self: ptr TextCtrlRaw): clong {.importcpp: "GetInsertionPoint()", header: "wx/textctrl.h".}

# SearchCtrl
proc newSearchCtrlRaw*(parent: ptr WindowRaw, id: cint, value: WxStringRaw, pos: PointRaw, size: SizeRaw, style: clong): ptr SearchCtrlRaw {.importcpp: "new wxSearchCtrl(@)", header: "wx/srchctrl.h".}

# StyledTextCtrl
proc newStyledTextCtrlRaw*(parent: ptr WindowRaw, id: cint, pos: PointRaw, size: SizeRaw, style: clong): ptr StyledTextCtrlRaw {.importcpp: "new wxStyledTextCtrl(@)", header: "wx/stc/stc.h".}
proc addText*(self: ptr StyledTextCtrlRaw, text: WxStringRaw) {.importcpp: "AddText(@)", header: "wx/stc/stc.h".}
