import types

proc getTitle*(self: ptr TopLevelWindowRaw): WxStringRaw {.importcpp: "GetTitle()", header: "wx/toplevel.h".}
proc setTitle*(self: ptr TopLevelWindowRaw, title: WxStringRaw) {.importcpp: "SetTitle(@)", header: "wx/toplevel.h".}
proc iconize*(self: ptr TopLevelWindowRaw, iconize: bool = true) {.importcpp: "Iconize(@)", header: "wx/toplevel.h".}
proc isIconized*(self: ptr TopLevelWindowRaw): bool {.importcpp: "IsIconized()", header: "wx/toplevel.h".}
proc maximize*(self: ptr TopLevelWindowRaw, maximize: bool = true) {.importcpp: "Maximize(@)", header: "wx/toplevel.h".}
proc isMaximized*(self: ptr TopLevelWindowRaw): bool {.importcpp: "IsMaximized()", header: "wx/toplevel.h".}
proc setIcon*(self: ptr TopLevelWindowRaw, icon: ptr IconRaw) {.importcpp: "SetIcon(#)", header: "wx/toplevel.h".}
