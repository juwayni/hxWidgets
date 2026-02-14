import types

proc newAppRaw*(): ptr AppRaw {.importcpp: "new wxApp()", header: "wx/app.h".}
proc setInstance*(app: ptr AppRaw) {.importcpp: "wxApp::SetInstance(@)", header: "wx/app.h".}
proc onInit*(self: ptr AppRaw): bool {.importcpp: "OnInit", header: "wx/app.h".}
proc onRun*(self: ptr AppRaw) {.importcpp: "OnRun", header: "wx/app.h".}
proc onExit*(self: ptr AppRaw): cint {.importcpp: "OnExit", header: "wx/app.h".}
proc setTopWindow*(self: ptr AppRaw, window: ptr WindowRaw) {.importcpp: "SetTopWindow(@)", header: "wx/app.h".}

proc wxEntryStart*(argc: var cint, argv: ptr cstring): bool {.importcpp: "wxEntryStart(@)", header: "wx/app.h".}
proc wxEntryCleanup*() {.importcpp: "wxEntryCleanup()", header: "wx/app.h".}
proc wxInitAllImageHandlers*() {.importcpp: "wxInitAllImageHandlers()", header: "wx/image.h".}
