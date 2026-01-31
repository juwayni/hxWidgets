import ../../wxraw/types
import ../../wxraw/sizer_raw
import ../object
import ../window

proc rawSizer*(self: Sizer): ptr SizerRaw =
  cast[ptr SizerRaw](self.rawObj)

proc add*(self: Sizer, window: Window, proportion: int = 0, flag: int = 0, border: int = 0) =
  discard self.rawSizer.add(window.rawWindow, proportion.cint, flag.cint, border.cint)

proc add*(self: Sizer, sizer: Sizer, proportion: int = 0, flag: int = 0, border: int = 0) =
  discard self.rawSizer.add(cast[ptr SizerRaw](sizer.rawObj), proportion.cint, flag.cint, border.cint)
