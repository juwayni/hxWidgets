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
