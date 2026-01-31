import types

proc newBoxSizerRaw*(orient: cint): ptr BoxSizerRaw {.importcpp: "new wxBoxSizer(@)", header: "wx/sizer.h".}
proc add*(self: ptr SizerRaw, window: ptr WindowRaw, proportion: cint = 0, flag: cint = 0, border: cint = 0): ptr any {.importcpp: "Add(@)", header: "wx/sizer.h".}
proc add*(self: ptr SizerRaw, sizer: ptr SizerRaw, proportion: cint = 0, flag: cint = 0, border: cint = 0): ptr any {.importcpp: "Add(@)", header: "wx/sizer.h".}
