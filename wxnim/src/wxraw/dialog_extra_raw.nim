import types

proc newTextEntryDialogRaw*(parent: ptr WindowRaw, message, caption, value: WxStringRaw, style: clong): ptr DialogRaw {.importcpp: "new wxTextEntryDialog(@)", header: "wx/textdlg.h".}
proc getValue*(self: ptr DialogRaw): WxStringRaw {.importcpp: "((wxTextEntryDialog*)#)->GetValue()", header: "wx/textdlg.h".}

proc newPasswordEntryDialogRaw*(parent: ptr WindowRaw, message, caption, value: WxStringRaw, style: clong): ptr DialogRaw {.importcpp: "new wxPasswordEntryDialog(@)", header: "wx/textdlg.h".}
