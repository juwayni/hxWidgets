type
  Alignment* = distinct cint
var
  alignNone* {.importcpp: "wxALIGN_NOT", header: "wx/defs.h".}: Alignment
  alignCenterHorizontal* {.importcpp: "wxALIGN_CENTER_HORIZONTAL", header: "wx/defs.h".}: Alignment
  alignLeft* {.importcpp: "wxALIGN_LEFT", header: "wx/defs.h".}: Alignment
  alignRight* {.importcpp: "wxALIGN_RIGHT", header: "wx/defs.h".}: Alignment
  alignCenterVertical* {.importcpp: "wxALIGN_CENTER_VERTICAL", header: "wx/defs.h".}: Alignment
  alignTop* {.importcpp: "wxALIGN_TOP", header: "wx/defs.h".}: Alignment
  alignBottom* {.importcpp: "wxALIGN_BOTTOM", header: "wx/defs.h".}: Alignment
  alignCenter* {.importcpp: "wxALIGN_CENTER", header: "wx/defs.h".}: Alignment
