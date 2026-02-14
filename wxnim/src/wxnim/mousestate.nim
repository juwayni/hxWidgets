import common_types, object
import ../wxraw/types

type
  MouseState* = ref object of Object

proc getX*(self: MouseState): int = 0
proc getY*(self: MouseState): int = 0
proc leftDown*(self: MouseState): bool = false
proc middleDown*(self: MouseState): bool = false
proc rightDown*(self: MouseState): bool = false
