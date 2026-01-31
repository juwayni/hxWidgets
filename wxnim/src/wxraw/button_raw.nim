import types

proc newButtonRaw*(parent: ptr WindowRaw, id: cint, label: WxStringRaw, pos: PointRaw, size: SizeRaw, style: clong): ptr ButtonRaw {.importcpp: "new wxButton(@)", header: "wx/button.h".}
