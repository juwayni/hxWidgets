type
  DataViewCtrlStyle* = distinct clong
var
  dvSingle* {.importcpp: "wxDV_SINGLE", header: "wx/dataview.h".}: DataViewCtrlStyle
  dvMultiple* {.importcpp: "wxDV_MULTIPLE", header: "wx/dataview.h".}: DataViewCtrlStyle
  dvRowLines* {.importcpp: "wxDV_ROW_LINES", header: "wx/dataview.h".}: DataViewCtrlStyle
  dvHorizRules* {.importcpp: "wxDV_HORIZ_RULES", header: "wx/dataview.h".}: DataViewCtrlStyle
  dvVertRules* {.importcpp: "wxDV_VERT_RULES", header: "wx/dataview.h".}: DataViewCtrlStyle
