import common_types
export common_types

proc isNull*(self: Object): bool =
  self == nil or self.rawObj == nil
