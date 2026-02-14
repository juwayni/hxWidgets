import common_types, window, utils
import ../wxraw/types
import ../wxraw/toplevel_raw

proc rawTopLevelWindow*(self: TopLevelWindow): ptr TopLevelWindowRaw =
  cast[ptr TopLevelWindowRaw](self.rawObj)

proc title*(self: TopLevelWindow): string =
  $(self.rawTopLevelWindow.getTitle())

proc `title=`*(self: TopLevelWindow, value: string) =
  self.rawTopLevelWindow.setTitle(constructWxString(value.cstring))

proc iconize*(self: TopLevelWindow, iconize: bool = true) =
  self.rawTopLevelWindow.iconize(iconize)

proc iconized*(self: TopLevelWindow): bool =
  self.rawTopLevelWindow.isIconized()

proc `iconized=`*(self: TopLevelWindow, value: bool) =
  self.rawTopLevelWindow.iconize(value)

proc maximize*(self: TopLevelWindow, maximize: bool = true) =
  self.rawTopLevelWindow.maximize(maximize)

proc maximized*(self: TopLevelWindow): bool =
  self.rawTopLevelWindow.isMaximized()

proc `maximized=`*(self: TopLevelWindow, value: bool) =
  self.rawTopLevelWindow.maximize(value)
