import types

# Timer
proc newTimerRaw*(owner: ptr EvtHandlerRaw, id: cint = -1): ptr TimerRaw {.importcpp: "new wxTimer(@)", header: "wx/timer.h".}
proc start*(self: ptr TimerRaw, milliseconds: cint = -1, oneShot: bool = false): bool {.importcpp: "Start(@)", header: "wx/timer.h".}
proc stop*(self: ptr TimerRaw) {.importcpp: "Stop()", header: "wx/timer.h".}
proc deleteTimerRaw*(self: ptr TimerRaw) {.importcpp: "delete #", header: "wx/timer.h".}

# StandardPaths
proc getExecutablePath*(): WxStringRaw {.importcpp: "wxStandardPaths::Get().GetExecutablePath()", header: "wx/stdpaths.h".}
proc getUserDataDir*(): WxStringRaw {.importcpp: "wxStandardPaths::Get().GetUserDataDir()", header: "wx/stdpaths.h".}

# SystemSettings
proc getMetric*(metric: cint, win: ptr WindowRaw = nil): cint {.importcpp: "wxSystemSettings::GetMetric(@)", header: "wx/settings.h".}
