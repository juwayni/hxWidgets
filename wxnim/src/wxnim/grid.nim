import window, common_types, evthandler
import ../wxraw/types
import ../wxraw/advanced_widgets_raw

type
  Grid* = ref object of ScrolledWindow

proc newGrid*(parent: Window, id: int = -1, x, y, width, height: int = -1, style: clong = 0): Grid =
  let raw = newGridRaw(parent.rawWindow, id.cint, PointRaw(x: x.cint, y: y.cint), SizeRaw(x: width.cint, y: height.cint), style)
  result = Grid(rawObj: cast[ptr WxObjectRaw](raw)); result.initEvtHandler()

proc createGrid*(self: Grid, numRows, numCols: int, selmode: int = 0): bool =
  cast[ptr GridRaw](self.rawObj).createGrid(numRows.cint, numCols.cint, selmode.cint)
