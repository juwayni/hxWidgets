import common_types, events, propertygrid
import ../wxraw/types

type
  PropertyGridEvent* = ref object of CommandEvent

proc getProperty*(self: PropertyGridEvent): PGProperty = nil
proc getPropertyName*(self: PropertyGridEvent): string = ""
