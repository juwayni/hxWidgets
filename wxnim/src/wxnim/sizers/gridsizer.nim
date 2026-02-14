import sizer
import ../../wxraw/types
import ../../wxraw/sizer_raw
import ../../wxraw/window_raw
import ../object
import ../window

type
  StaticBoxSizer* = ref object of BoxSizer

proc newStaticBoxSizer*(orient: int, parent: Window, label: string = ""): StaticBoxSizer =
  let raw = newStaticBoxSizerRaw(orient.cint, parent.rawWindow, constructWxString(label.cstring))
  result = StaticBoxSizer(rawObj: cast[ptr WxObjectRaw](raw))

type
  GridSizer* = ref object of Sizer

proc newGridSizer*(rows, cols, vgap, hgap: int): GridSizer =
  let raw = newGridSizerRaw(rows.cint, cols.cint, vgap.cint, hgap.cint)
  result = GridSizer(rawObj: cast[ptr WxObjectRaw](raw))

type
  FlexGridSizer* = ref object of GridSizer

proc newFlexGridSizer*(rows, cols, vgap, hgap: int): FlexGridSizer =
  let raw = newFlexGridSizerRaw(rows.cint, cols.cint, vgap.cint, hgap.cint)
  result = FlexGridSizer(rawObj: cast[ptr WxObjectRaw](raw))

proc addGrowableRow*(self: FlexGridSizer, idx: int, proportion: int = 0) =
  cast[ptr FlexGridSizerRaw](self.rawObj).addGrowableRow(idx.size_t, proportion.cint)

proc addGrowableCol*(self: FlexGridSizer, idx: int, proportion: int = 0) =
  cast[ptr FlexGridSizerRaw](self.rawObj).addGrowableCol(idx.size_t, proportion.cint)
