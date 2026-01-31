import common_types, object, utils
import ../wxraw/types
import ../wxraw/propgrid_raw

type
  PGProperty* = ref object of Object

proc newBoolProperty*(label, name: string, value: bool = false): PGProperty =
  let raw = newBoolPropertyRaw(constructWxString(label.cstring), constructWxString(name.cstring), value)
  result = PGProperty(rawObj: raw)

proc newIntProperty*(label, name: string, value: int = 0): PGProperty =
  let raw = newIntPropertyRaw(constructWxString(label.cstring), constructWxString(name.cstring), value.clonglong)
  result = PGProperty(rawObj: raw)

proc newStringProperty*(label, name: string, value: string = ""): PGProperty =
  let raw = newStringPropertyRaw(constructWxString(label.cstring), constructWxString(name.cstring), constructWxString(value.cstring))
  result = PGProperty(rawObj: raw)

proc append*(self: PropertyGrid, prop: PGProperty): PGProperty =
  let raw = cast[ptr PropertyGridRaw](self.rawObj).appendProperty(prop.rawObj)
  result = PGProperty(rawObj: raw)
