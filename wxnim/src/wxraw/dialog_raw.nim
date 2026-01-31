import types

proc showModal*(self: ptr DialogRaw): cint {.importcpp: "ShowModal()", header: "wx/dialog.h".}

proc newMessageDialogRaw*(parent: ptr WindowRaw, message: WxStringRaw, caption: WxStringRaw, style: clong): ptr MessageDialogRaw {.importcpp: "new wxMessageDialog(@)", header: "wx/msgdlg.h".}

proc newFileDialogRaw*(parent: ptr WindowRaw, message: WxStringRaw, defaultDir: WxStringRaw, defaultFile: WxStringRaw, wildcard: WxStringRaw, style: clong): ptr FileDialogRaw {.importcpp: "new wxFileDialog(@)", header: "wx/filedlg.h".}
proc getPath*(self: ptr FileDialogRaw): WxStringRaw {.importcpp: "GetPath()", header: "wx/filedlg.h".}

proc newDirDialogRaw*(parent: ptr WindowRaw, message: WxStringRaw, defaultPath: WxStringRaw, style: clong): ptr DirDialogRaw {.importcpp: "new wxDirDialog(@)", header: "wx/dirdlg.h".}
proc getPath*(self: ptr DirDialogRaw): WxStringRaw {.importcpp: "GetPath()", header: "wx/dirdlg.h".}

proc newFontDialogRaw*(parent: ptr WindowRaw, data: any): ptr FontDialogRaw {.importcpp: "new wxFontDialog(@)", header: "wx/fontdlg.h".}

proc newColourDialogRaw*(parent: ptr WindowRaw, data: any): ptr ColourDialogRaw {.importcpp: "new wxColourDialog(@)", header: "wx/colordlg.h".}
