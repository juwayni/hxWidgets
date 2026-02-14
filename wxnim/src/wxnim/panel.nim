import window
import ../wxraw/types
import ../wxraw/panel_raw

type
  Panel* = ref object of Window

proc rawPanel*(self: Panel): ptr PanelRaw =
  cast[ptr PanelRaw](self.rawObj)

proc newPanel*(parent: Window, id: int = -1,
               x: int = -1, y: int = -1, width: int = -1, height: int = -1,
               style: clong = 0): Panel =
  let rawParent = parent.rawWindow
  let pos = PointRaw(x: x.cint, y: y.cint)
  let size = SizeRaw(x: width.cint, y: height.cint)

  let raw = newPanelRaw(rawParent, id.cint, pos, size, style)
  result = Panel(rawObj: cast[ptr WxObjectRaw](raw))
  result.initEvtHandler()
