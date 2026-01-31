import types

proc newPanelRaw*(parent: ptr WindowRaw, id: cint, pos: PointRaw, size: SizeRaw, style: clong): ptr PanelRaw {.importcpp: "new wxPanel(@)", header: "wx/panel.h".}
