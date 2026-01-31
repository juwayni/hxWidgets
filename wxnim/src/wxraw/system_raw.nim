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

# Config
proc newConfigRaw*(appName: WxStringRaw): ptr ConfigRaw {.importcpp: "new wxConfig(@)", header: "wx/config.h".}
proc deleteConfigRaw*(self: ptr ConfigRaw) {.importcpp: "delete #", header: "wx/config.h".}
proc read*(self: ptr ConfigRaw, key: WxStringRaw, defaultVal: WxStringRaw): WxStringRaw {.importcpp: "Read(@)", header: "wx/config.h".}
proc write*(self: ptr ConfigRaw, key: WxStringRaw, value: WxStringRaw): bool {.importcpp: "Write(@)", header: "wx/config.h".}

# Clipboard
proc openClipboard*(self: ptr WxObjectRaw): bool {.importcpp: "((wxClipboard*)#)->Open()", header: "wx/clipbrd.h".}
proc closeClipboard*(self: ptr WxObjectRaw) {.importcpp: "((wxClipboard*)#)->Close()", header: "wx/clipbrd.h".}
var wxTheClipboard* {.importcpp: "wxTheClipboard", header: "wx/clipbrd.h".}: ptr WxObjectRaw
