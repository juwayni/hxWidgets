import types

proc newFrameRaw*(parent: ptr WindowRaw, id: cint, title: WxStringRaw,
                  pos: PointRaw, size: SizeRaw, style: clong): ptr FrameRaw {.importcpp: "new wxFrame(@)", header: "wx/frame.h".}
