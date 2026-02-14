type
  AntialiasMode* = distinct cint
var
  aaNone* {.importcpp: "wxANTIALIAS_NONE", header: "wx/graphics.h".}: AntialiasMode
  aaDefault* {.importcpp: "wxANTIALIAS_DEFAULT", header: "wx/graphics.h".}: AntialiasMode

type
  InterpolationQuality* = distinct cint
var
  interpDefault* {.importcpp: "wxINTERPOLATION_DEFAULT", header: "wx/graphics.h".}: InterpolationQuality
  interpNone* {.importcpp: "wxINTERPOLATION_NONE", header: "wx/graphics.h".}: InterpolationQuality
  interpFast* {.importcpp: "wxINTERPOLATION_FAST", header: "wx/graphics.h".}: InterpolationQuality
  interpGood* {.importcpp: "wxINTERPOLATION_GOOD", header: "wx/graphics.h".}: InterpolationQuality
  interpBest* {.importcpp: "wxINTERPOLATION_BEST", header: "wx/graphics.h".}: InterpolationQuality
