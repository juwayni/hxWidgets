import types

proc getOSVersion*(major, minor, micro: ptr cint): cint {.importcpp: "wxGetOsVersion(@)", header: "wx/utils.h".}
proc getPlatformName*(): WxStringRaw {.importcpp: "wxGetOsDescription()", header: "wx/utils.h".}
proc is64Bit*(): bool {.importcpp: "wxIsPlatform64Bit()", header: "wx/utils.h".}

proc newProcessRaw*(parent: ptr EvtHandlerRaw, id: cint): ptr WxObjectRaw {.importcpp: "new wxProcess(@)", header: "wx/process.h".}
proc killProcess*(pid: clong, sig: cint = 9): cint {.importcpp: "wxProcess::Kill(@)", header: "wx/process.h".}
