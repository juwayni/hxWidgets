import window, common_types, evthandler, utils
import ../wxraw/types

proc newCollapsiblePaneRaw*(parent: ptr WindowRaw, id: cint, label: WxStringRaw, pos: PointRaw, size: SizeRaw, style: clong): ptr CollapsiblePaneRaw {.importcpp: "new wxCollapsiblePane(@)", header: "wx/collpane.h".}
proc getPane*(self: ptr CollapsiblePaneRaw): ptr WindowRaw {.importcpp: "GetPane()", header: "wx/collpane.h".}
proc collapse*(self: ptr CollapsiblePaneRaw, collapse: bool = true) {.importcpp: "Collapse(@)", header: "wx/collpane.h".}
proc expand*(self: ptr CollapsiblePaneRaw) {.importcpp: "Expand()", header: "wx/collpane.h".}

type
  CollapsiblePane* = ref object of Control

proc newCollapsiblePane*(parent: Window, label: string, id: int = -1, x, y, width, height: int = -1, style: clong = 0): CollapsiblePane =
  let raw = newCollapsiblePaneRaw(parent.rawWindow, id.cint, constructWxString(label.cstring), PointRaw(x: x.cint, y: y.cint), SizeRaw(x: width.cint, y: height.cint), style)
  result = CollapsiblePane(rawObj: cast[ptr WxObjectRaw](raw)); result.initEvtHandler()

proc pane*(self: CollapsiblePane): Window =
  let raw = cast[ptr CollapsiblePaneRaw](self.rawObj).getPane()
  result = Window(rawObj: cast[ptr WxObjectRaw](raw))

proc collapse*(self: CollapsiblePane, collapse: bool = true) =
  cast[ptr CollapsiblePaneRaw](self.rawObj).collapse(collapse)

proc expand*(self: CollapsiblePane) =
  cast[ptr CollapsiblePaneRaw](self.rawObj).expand()
