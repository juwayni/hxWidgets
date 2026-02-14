type
  GridSelectionMode* = distinct cint
var
  gridSelectCells* {.importcpp: "wxGrid::wxGridSelectCells", header: "wx/grid/grid.h".}: GridSelectionMode
  gridSelectRows* {.importcpp: "wxGrid::wxGridSelectRows", header: "wx/grid/grid.h".}: GridSelectionMode
  gridSelectColumns* {.importcpp: "wxGrid::wxGridSelectColumns", header: "wx/grid/grid.h".}: GridSelectionMode
  gridSelectRowsOrColumns* {.importcpp: "wxGrid::wxGridSelectRowsOrColumns", header: "wx/grid/grid.h".}: GridSelectionMode
