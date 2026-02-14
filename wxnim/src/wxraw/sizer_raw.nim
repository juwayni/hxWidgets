import types

proc newBoxSizerRaw*(orient: cint): ptr BoxSizerRaw {.importcpp: "new wxBoxSizer(@)", header: "wx/sizer.h".}
proc newStaticBoxSizerRaw*(orient: cint, parent: ptr WindowRaw, label: WxStringRaw): ptr StaticBoxSizerRaw {.importcpp: "new wxStaticBoxSizer(@)", header: "wx/sizer.h".}
proc newGridSizerRaw*(rows, cols, vgap, hgap: cint): ptr GridSizerRaw {.importcpp: "new wxGridSizer(@)", header: "wx/sizer.h".}
proc newFlexGridSizerRaw*(rows, cols, vgap, hgap: cint): ptr FlexGridSizerRaw {.importcpp: "new wxFlexGridSizer(@)", header: "wx/sizer.h".}

proc addGrowableRow*(self: ptr FlexGridSizerRaw, idx: size_t, proportion: cint = 0) {.importcpp: "AddGrowableRow(@)", header: "wx/sizer.h".}
proc addGrowableCol*(self: ptr FlexGridSizerRaw, idx: size_t, proportion: cint = 0) {.importcpp: "AddGrowableCol(@)", header: "wx/sizer.h".}

proc add*(self: ptr SizerRaw, window: ptr WindowRaw, proportion: cint = 0, flag: cint = 0, border: cint = 0): ptr any {.importcpp: "Add(@)", header: "wx/sizer.h".}
proc add*(self: ptr SizerRaw, sizer: ptr SizerRaw, proportion: cint = 0, flag: cint = 0, border: cint = 0): ptr any {.importcpp: "Add(@)", header: "wx/sizer.h".}
proc addSpacer*(self: ptr SizerRaw, size: cint) {.importcpp: "AddSpacer(#)", header: "wx/sizer.h".}

proc recalcSizes*(self: ptr SizerRaw) {.importcpp: "RecalcSizes()", header: "wx/sizer.h".}
proc layout*(self: ptr SizerRaw) {.importcpp: "Layout()", header: "wx/sizer.h".}
proc fit*(self: ptr SizerRaw, window: ptr WindowRaw) {.importcpp: "Fit(#)", header: "wx/sizer.h".}
proc setSizeHints*(self: ptr SizerRaw, window: ptr WindowRaw) {.importcpp: "SetSizeHints(#)", header: "wx/sizer.h".}
