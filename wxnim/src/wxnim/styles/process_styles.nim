type
  ProcessFlag* = distinct cint
var
  processDefault* {.importcpp: "wxPROCESS_DEFAULT", header: "wx/process.h".}: ProcessFlag
  processRedirect* {.importcpp: "wxPROCESS_REDIRECT", header: "wx/process.h".}: ProcessFlag

type
  ExecFlag* = distinct cint
var
  execAsync* {.importcpp: "wxEXEC_ASYNC", header: "wx/utils.h".}: ExecFlag
  execSync* {.importcpp: "wxEXEC_SYNC", header: "wx/utils.h".}: ExecFlag
  execShowConsole* {.importcpp: "wxEXEC_SHOW_CONSOLE", header: "wx/utils.h".}: ExecFlag
  execHideConsole* {.importcpp: "wxEXEC_HIDE_CONSOLE", header: "wx/utils.h".}: ExecFlag
