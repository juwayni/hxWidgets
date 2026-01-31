import evthandler
import ../wxraw/types
import ../wxraw/window_raw

proc rawWindow*(self: Window): ptr WindowRaw =
  cast[ptr WindowRaw](self.rawObj)

proc show*(self: Window, show: bool = true): bool =
  self.rawWindow.show(show)

proc destroy*(self: Window): bool =
  result = self.rawWindow.destroy()
  if result:
    self.rawObj = nil

proc `sizer=`*(self: Window, sizer: Sizer) =
  self.rawWindow.setSizer(cast[ptr SizerRaw](sizer.rawObj))

proc setSizerAndFit*(self: Window, sizer: Sizer, deleteOld: bool = true) =
  self.rawWindow.setSizerAndFit(cast[ptr SizerRaw](sizer.rawObj), deleteOld)

proc layout*(self: Window): bool =
  self.rawWindow.layout()
