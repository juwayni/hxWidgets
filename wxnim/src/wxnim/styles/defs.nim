type
  Alignment* = distinct cint
  AntialiasMode* = distinct cint
  Direction* = distinct cint
  FontFamily* = distinct cint
  FontStyle* = distinct cint
  FontWeight* = distinct cint
  HitTest* = distinct cint
  ItemKind* = distinct cint
  OperatingSystemId* = distinct cint
  Orientation* = distinct cint
  ScrollbarVisibility* = distinct cint
  Stretch* = distinct cint
  WindowVariant* = distinct cint
  InterpolationQuality* = distinct cint

var
  # Alignment
  alignNone* {.importcpp: "wxALIGN_NOT", header: "wx/defs.h".}: Alignment
  alignCenterHorizontal* {.importcpp: "wxALIGN_CENTER_HORIZONTAL", header: "wx/defs.h".}: Alignment
  alignLeft* {.importcpp: "wxALIGN_LEFT", header: "wx/defs.h".}: Alignment
  alignRight* {.importcpp: "wxALIGN_RIGHT", header: "wx/defs.h".}: Alignment
  alignCenterVertical* {.importcpp: "wxALIGN_CENTER_VERTICAL", header: "wx/defs.h".}: Alignment
  alignTop* {.importcpp: "wxALIGN_TOP", header: "wx/defs.h".}: Alignment
  alignBottom* {.importcpp: "wxALIGN_BOTTOM", header: "wx/defs.h".}: Alignment
  alignCenter* {.importcpp: "wxALIGN_CENTER", header: "wx/defs.h".}: Alignment

  # Direction
  dirLeft* {.importcpp: "wxLEFT", header: "wx/defs.h".}: Direction
  dirRight* {.importcpp: "wxRIGHT", header: "wx/defs.h".}: Direction
  dirUp* {.importcpp: "wxUP", header: "wx/defs.h".}: Direction
  dirDown* {.importcpp: "wxDOWN", header: "wx/defs.h".}: Direction
  dirTop* {.importcpp: "wxTOP", header: "wx/defs.h".}: Direction
  dirBottom* {.importcpp: "wxBOTTOM", header: "wx/defs.h".}: Direction
  dirNorth* {.importcpp: "wxNORTH", header: "wx/defs.h".}: Direction
  dirSouth* {.importcpp: "wxSOUTH", header: "wx/defs.h".}: Direction
  dirEast* {.importcpp: "wxEAST", header: "wx/defs.h".}: Direction
  dirWest* {.importcpp: "wxWEST", header: "wx/defs.h".}: Direction
  dirAll* {.importcpp: "wxALL", header: "wx/defs.h".}: Direction

  # Orientation
  orientHorizontal* {.importcpp: "wxHORIZONTAL", header: "wx/defs.h".}: Orientation
  orientVertical* {.importcpp: "wxVERTICAL", header: "wx/defs.h".}: Orientation
  orientBoth* {.importcpp: "wxBOTH", header: "wx/defs.h".}: Orientation

  # ItemKind
  itemNormal* {.importcpp: "wxITEM_NORMAL", header: "wx/defs.h".}: ItemKind
  itemCheck* {.importcpp: "wxITEM_CHECK", header: "wx/defs.h".}: ItemKind
  itemRadio* {.importcpp: "wxITEM_RADIO", header: "wx/defs.h".}: ItemKind
  itemDropdown* {.importcpp: "wxITEM_DROPDOWN", header: "wx/defs.h".}: ItemKind
  itemSeparator* {.importcpp: "wxITEM_SEPARATOR", header: "wx/defs.h".}: ItemKind
