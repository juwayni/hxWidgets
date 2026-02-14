type
  StyledTextCtrlStyle* = distinct clong
var
  stcUseTabs* {.importcpp: "wxSTC_USE_TABS", header: "wx/stc/stc.h".}: StyledTextCtrlStyle
  stcTabWidth* {.importcpp: "wxSTC_TAB_WIDTH", header: "wx/stc/stc.h".}: StyledTextCtrlStyle
  stcIndent* {.importcpp: "wxSTC_INDENT", header: "wx/stc/stc.h".}: StyledTextCtrlStyle

type
  LexicalState* = distinct cint
var
  stcLexPython* {.importcpp: "wxSTC_LEX_PYTHON", header: "wx/stc/stc.h".}: LexicalState
  stcLexCpp* {.importcpp: "wxSTC_LEX_CPP", header: "wx/stc/stc.h".}: LexicalState
  stcLexHtml* {.importcpp: "wxSTC_LEX_HTML", header: "wx/stc/stc.h".}: LexicalState
  stcLexXml* {.importcpp: "wxSTC_LEX_XML", header: "wx/stc/stc.h".}: LexicalState
  stcLexLua* {.importcpp: "wxSTC_LEX_LUA", header: "wx/stc/stc.h".}: LexicalState
  stcLexSql* {.importcpp: "wxSTC_LEX_SQL", header: "wx/stc/stc.h".}: LexicalState
  stcLexPascal* {.importcpp: "wxSTC_LEX_PASCAL", header: "wx/stc/stc.h".}: LexicalState
