type
  CalendarCtrlStyle* = distinct clong
var
  calSundayFirst* {.importcpp: "wxCAL_SUNDAY_FIRST", header: "wx/calctrl.h".}: CalendarCtrlStyle
  calMondayFirst* {.importcpp: "wxCAL_MONDAY_FIRST", header: "wx/calctrl.h".}: CalendarCtrlStyle
  calShowHolidays* {.importcpp: "wxCAL_SHOW_HOLIDAYS", header: "wx/calctrl.h".}: CalendarCtrlStyle
