type
  DataViewCtrlStyle* = distinct clong
var
  dvSingle* {.importcpp: "wxDV_SINGLE", header: "wx/dataview.h".}: DataViewCtrlStyle
  dvMultiple* {.importcpp: "wxDV_MULTIPLE", header: "wx/dataview.h".}: DataViewCtrlStyle
  dvRowLines* {.importcpp: "wxDV_ROW_LINES", header: "wx/dataview.h".}: DataViewCtrlStyle
  dvHorizRules* {.importcpp: "wxDV_HORIZ_RULES", header: "wx/dataview.h".}: DataViewCtrlStyle
  dvVertRules* {.importcpp: "wxDV_VERT_RULES", header: "wx/dataview.h".}: DataViewCtrlStyle

type
  DirDialogStyle* = distinct clong
var
  ddDefaultStyle* {.importcpp: "wxDD_DEFAULT_STYLE", header: "wx/dirdlg.h".}: DirDialogStyle
  ddDirMustExist* {.importcpp: "wxDD_DIR_MUST_EXIST", header: "wx/dirdlg.h".}: DirDialogStyle

type
  FileDialogStyle* = distinct clong
var
  fdDefaultStyle* {.importcpp: "wxFD_DEFAULT_STYLE", header: "wx/filedlg.h".}: FileDialogStyle
  fdOpen* {.importcpp: "wxFD_OPEN", header: "wx/filedlg.h".}: FileDialogStyle
  fdSave* {.importcpp: "wxFD_SAVE", header: "wx/filedlg.h".}: FileDialogStyle
  fdOverwritePrompt* {.importcpp: "wxFD_OVERWRITE_PROMPT", header: "wx/filedlg.h".}: FileDialogStyle
  fdFileMustExist* {.importcpp: "wxFD_FILE_MUST_EXIST", header: "wx/filedlg.h".}: FileDialogStyle
  fdMultiple* {.importcpp: "wxFD_MULTIPLE", header: "wx/filedlg.h".}: FileDialogStyle

type
  HyperlinkCtrlStyle* = distinct clong
var
  hlDefaultStyle* {.importcpp: "wxHL_DEFAULT_STYLE", header: "wx/hyperlink.h".}: HyperlinkCtrlStyle
  hlAlignLeft* {.importcpp: "wxHL_ALIGN_LEFT", header: "wx/hyperlink.h".}: HyperlinkCtrlStyle
  hlAlignRight* {.importcpp: "wxHL_ALIGN_RIGHT", header: "wx/hyperlink.h".}: HyperlinkCtrlStyle
  hlAlignCenter* {.importcpp: "wxHL_ALIGN_CENTRE", header: "wx/hyperlink.h".}: HyperlinkCtrlStyle

type
  NotebookStyle* = distinct clong
var
  nbDefault* {.importcpp: "wxNB_DEFAULT", header: "wx/notebook.h".}: NotebookStyle
  nbTop* {.importcpp: "wxNB_TOP", header: "wx/notebook.h".}: NotebookStyle
  nbLeft* {.importcpp: "wxNB_LEFT", header: "wx/notebook.h".}: NotebookStyle
  nbRight* {.importcpp: "wxNB_RIGHT", header: "wx/notebook.h".}: NotebookStyle
  nbBottom* {.importcpp: "wxNB_BOTTOM", header: "wx/notebook.h".}: NotebookStyle
  nbMultiline* {.importcpp: "wxNB_MULTILINE", header: "wx/notebook.h".}: NotebookStyle
  nbFixedWidth* {.importcpp: "wxNB_FIXEDWIDTH", header: "wx/notebook.h".}: NotebookStyle
