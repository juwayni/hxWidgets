import ../../wxraw/types
import ../../wxraw/sizer_raw
import ../common_types
import ../window

proc rawSizer*(self: Sizer): ptr SizerRaw =
  if self == nil: return nil
  cast[ptr SizerRaw](self.rawObj)

proc add*(self: Sizer, window: Window, proportion: int = 0, flag: int = 0, border: int = 0) =
  discard self.rawSizer.add(window.rawWindow, proportion.cint, flag.cint, border.cint)

proc add*(self: Sizer, sizer: Sizer, proportion: int = 0, flag: int = 0, border: int = 0) =
  discard self.rawSizer.add(sizer.rawSizer, proportion.cint, flag.cint, border.cint)

proc addSpacer*(self: Sizer, size: int) =
  self.rawSizer.addSpacer(size.cint)

proc recalcSizes*(self: Sizer) = self.rawSizer.recalcSizes()
proc layout*(self: Sizer) = self.rawSizer.layout()
proc fit*(self: Sizer, window: Window) = self.rawSizer.fit(window.rawWindow)
proc setSizeHints*(self: Sizer, window: Window) = self.rawSizer.setSizeHints(window.rawWindow)
