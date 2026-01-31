import types

proc showModal*(self: ptr DialogRaw): cint {.importcpp: "ShowModal()", header: "wx/dialog.h".}

proc newMessageDialogRaw*(parent: ptr WindowRaw, message: WxStringRaw, caption: WxStringRaw, style: clong): ptr MessageDialogRaw {.importcpp: "new wxMessageDialog(@)", header: "wx/msgdlg.h".}

proc newFileDialogRaw*(parent: ptr WindowRaw, message: WxStringRaw, defaultDir: WxStringRaw, defaultFile: WxStringRaw, wildcard: WxStringRaw, style: clong): ptr FileDialogRaw {.importcpp: "new wxFileDialog(@)", header: "wx/filedlg.h".}
proc getPath*(self: ptr FileDialogRaw): WxStringRaw {.importcpp: "GetPath()", header: "wx/filedlg.h".}
