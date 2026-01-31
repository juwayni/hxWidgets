import types

proc show*(self: ptr WindowRaw, show: bool = true): bool {.importcpp: "Show(@)", header: "wx/window.h".}
proc destroy*(self: ptr WindowRaw): bool {.importcpp: "Destroy()", header: "wx/window.h".}
proc setSizer*(self: ptr WindowRaw, sizer: ptr SizerRaw) {.importcpp: "SetSizer(@)", header: "wx/window.h".}
proc setSizerAndFit*(self: ptr WindowRaw, sizer: ptr SizerRaw, deleteOld: bool = true) {.importcpp: "SetSizerAndFit(@)", header: "wx/window.h".}
proc layout*(self: ptr WindowRaw): bool {.importcpp: "Layout()", header: "wx/window.h".}
