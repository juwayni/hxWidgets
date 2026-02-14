import ../wxraw/types

var
  wxRED* {.importcpp: "wxRED", header: "wx/gdicmn.h".}: ptr ColourRaw
  wxBLUE* {.importcpp: "wxBLUE", header: "wx/gdicmn.h".}: ptr ColourRaw
  wxGREEN* {.importcpp: "wxGREEN", header: "wx/gdicmn.h".}: ptr ColourRaw
  wxBLACK* {.importcpp: "wxBLACK", header: "wx/gdicmn.h".}: ptr ColourRaw
  wxWHITE* {.importcpp: "wxWHITE", header: "wx/gdicmn.h".}: ptr ColourRaw

var
  wxTRANSPARENT_PEN* {.importcpp: "wxTRANSPARENT_PEN", header: "wx/gdicmn.h".}: ptr PenRaw
  wxTRANSPARENT_BRUSH* {.importcpp: "wxTRANSPARENT_BRUSH", header: "wx/gdicmn.h".}: ptr BrushRaw
