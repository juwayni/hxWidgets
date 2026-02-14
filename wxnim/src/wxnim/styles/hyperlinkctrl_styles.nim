type
  HyperlinkCtrlStyle* = distinct clong
var
  hlDefaultStyle* {.importcpp: "wxHL_DEFAULT_STYLE", header: "wx/hyperlink.h".}: HyperlinkCtrlStyle
  hlAlignLeft* {.importcpp: "wxHL_ALIGN_LEFT", header: "wx/hyperlink.h".}: HyperlinkCtrlStyle
  hlAlignRight* {.importcpp: "wxHL_ALIGN_RIGHT", header: "wx/hyperlink.h".}: HyperlinkCtrlStyle
  hlAlignCenter* {.importcpp: "wxHL_ALIGN_CENTRE", header: "wx/hyperlink.h".}: HyperlinkCtrlStyle
