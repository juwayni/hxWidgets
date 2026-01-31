import types

proc newTextCtrlRaw*(parent: ptr WindowRaw, id: cint, value: WxStringRaw, pos: PointRaw, size: SizeRaw, style: clong): ptr TextCtrlRaw {.importcpp: "new wxTextCtrl(@)", header: "wx/textctrl.h".}
proc getValue*(self: ptr TextCtrlRaw): WxStringRaw {.importcpp: "GetValue()", header: "wx/textctrl.h".}
proc setValue*(self: ptr TextCtrlRaw, value: WxStringRaw) {.importcpp: "SetValue(@)", header: "wx/textctrl.h".}
proc appendText*(self: ptr TextCtrlRaw, text: WxStringRaw) {.importcpp: "AppendText(@)", header: "wx/textctrl.h".}
proc clear*(self: ptr TextCtrlRaw) {.importcpp: "Clear()", header: "wx/textctrl.h".}
