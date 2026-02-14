type
  RadioButtonStyle* = distinct clong
var
  rbGroup* {.importcpp: "wxRB_GROUP", header: "wx/radiobut.h".}: RadioButtonStyle
  rbSingle* {.importcpp: "wxRB_SINGLE", header: "wx/radiobut.h".}: RadioButtonStyle

type
  ScrollBarStyle* = distinct clong
var
  sbHorizontal* {.importcpp: "wxSB_HORIZONTAL", header: "wx/scrolbar.h".}: ScrollBarStyle
  sbVertical* {.importcpp: "wxSB_VERTICAL", header: "wx/scrolbar.h".}: ScrollBarStyle

type
  StaticLineStyle* = distinct clong
var
  liHorizontal* {.importcpp: "wxLI_HORIZONTAL", header: "wx/statline.h".}: StaticLineStyle
  liVertical* {.importcpp: "wxLI_VERTICAL", header: "wx/statline.h".}: StaticLineStyle

type
  StaticTextStyle* = distinct clong
var
  stAlignLeft* {.importcpp: "wxST_ALIGN_LEFT", header: "wx/stattext.h".}: StaticTextStyle
  stAlignRight* {.importcpp: "wxST_ALIGN_RIGHT", header: "wx/stattext.h".}: StaticTextStyle
  stAlignCenter* {.importcpp: "wxST_ALIGN_CENTRE", header: "wx/stattext.h".}: StaticTextStyle
  stNoAutoresize* {.importcpp: "wxST_NO_AUTORESIZE", header: "wx/stattext.h".}: StaticTextStyle
  stEllipsizeStart* {.importcpp: "wxST_ELLIPSIZE_START", header: "wx/stattext.h".}: StaticTextStyle
  stEllipsizeMiddle* {.importcpp: "wxST_ELLIPSIZE_MIDDLE", header: "wx/stattext.h".}: StaticTextStyle
  stEllipsizeEnd* {.importcpp: "wxST_ELLIPSIZE_END", header: "wx/stattext.h".}: StaticTextStyle
