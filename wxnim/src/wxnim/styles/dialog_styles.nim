type
  DialogStyle* = distinct clong

proc `or`*(a, b: DialogStyle): DialogStyle {.borrow.}

var
  dsDefaultStyle* {.importcpp: "wxDEFAULT_DIALOG_STYLE", header: "wx/dialog.h".}: DialogStyle

  # MessageDialog styles
  mbOk* {.importcpp: "wxOK", header: "wx/msgdlg.h".}: clong
  mbCancel* {.importcpp: "wxCANCEL", header: "wx/msgdlg.h".}: clong
  mbYesNo* {.importcpp: "wxYES_NO", header: "wx/msgdlg.h".}: clong
  mbIconInformation* {.importcpp: "wxICON_INFORMATION", header: "wx/msgdlg.h".}: clong
  mbIconError* {.importcpp: "wxICON_ERROR", header: "wx/msgdlg.h".}: clong

  # FileDialog styles
  fdOpen* {.importcpp: "wxFD_OPEN", header: "wx/filedlg.h".}: clong
  fdSave* {.importcpp: "wxFD_SAVE", header: "wx/filedlg.h".}: clong
  fdMultiple* {.importcpp: "wxFD_MULTIPLE", header: "wx/filedlg.h".}: clong
