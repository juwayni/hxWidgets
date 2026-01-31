import common_types, window, utils
import ../wxraw/types
import ../wxraw/control_raw

proc rawControl*(self: Control): ptr ControlRaw =
  cast[ptr ControlRaw](self.rawObj)

proc label*(self: Control): string =
  $(self.rawControl.getLabel())

proc `label=`*(self: Control, value: string) =
  self.rawControl.setLabel(constructWxString(value.cstring))

proc setLabelMarkup*(self: Control, value: string): bool =
  self.rawControl.setLabelMarkup(constructWxString(value.cstring))
