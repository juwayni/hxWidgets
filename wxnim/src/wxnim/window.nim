import evthandler, common_types, gdi, utils
import ../wxraw/types
import ../wxraw/window_raw

proc rawWindow*(self: Window): ptr WindowRaw =
  if self == nil: return nil
  cast[ptr WindowRaw](self.rawObj)

proc show*(self: Window, show: bool = true): bool = self.rawWindow.show(show)
proc hide*(self: Window): bool = self.rawWindow.show(false)

proc enabled*(self: Window): bool {.importcpp: "IsEnabled()", header: "wx/window.h".}
proc `enabled=`*(self: Window, value: bool) {.importcpp: "Enable(@)", header: "wx/window.h".}

proc shown*(self: Window): bool {.importcpp: "IsShown()", header: "wx/window.h".}

proc setFocus*(self: Window) {.importcpp: "SetFocus()", header: "wx/window.h".}

proc close*(self: Window, force: bool = false): bool {.importcpp: "Close(@)", header: "wx/window.h".}

proc destroy*(self: Window): bool =
  if self.rawObj != nil:
    result = self.rawWindow.destroy()
    if result: self.rawObj = nil

proc destroyChildren*(self: Window): bool {.importcpp: "DestroyChildren()", header: "wx/window.h".}

proc refresh*(self: Window, eraseBackground: bool = true) {.importcpp: "Refresh(@)", header: "wx/window.h".}
proc update*(self: Window) {.importcpp: "Update()", header: "wx/window.h".}

proc freeze*(self: Window) {.importcpp: "Freeze()", header: "wx/window.h".}
proc thaw*(self: Window) {.importcpp: "Thaw()", header: "wx/window.h".}

proc backgroundColour*(self: Window): Colour =
  # Need to implement Colour wrap for raw return
  nil
proc `backgroundColour=`*(self: Window, colour: Colour) =
  if colour != nil:
    self.rawWindow.setBackgroundColour(cast[ptr ColourRaw](colour.rawObj))

proc foregroundColour*(self: Window): Colour = nil
proc `foregroundColour=`*(self: Window, colour: Colour) =
  if colour != nil:
    self.rawWindow.setForegroundColour(cast[ptr ColourRaw](colour.rawObj))

proc setSizerAndFit*(self: Window, sizer: Sizer, deleteOld: bool = true) =
  self.rawWindow.setSizerAndFit(cast[ptr SizerRaw](sizer.rawObj), deleteOld)

proc `sizer=`*(self: Window, sizer: Sizer) =
  self.rawWindow.setSizer(cast[ptr SizerRaw](sizer.rawObj))

proc layout*(self: Window): bool = self.rawWindow.layout()

proc fit*(self: Window) {.importcpp: "Fit()", header: "wx/window.h".}

proc toolTip*(self: Window): string = ""
proc `toolTip=`*(self: Window, value: string) =
  self.rawWindow.setToolTip(constructWxString(value.cstring))

proc captureMouse*(self: Window) {.importcpp: "CaptureMouse()", header: "wx/window.h".}
proc releaseMouse*(self: Window) {.importcpp: "ReleaseMouse()", header: "wx/window.h".}
