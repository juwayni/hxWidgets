import common_types, object, utils
import ../wxraw/types

type
  ItemContainer* = ref object of Object
  ItemContainerImmutable* = ref object of ItemContainer

proc append*(self: ItemContainer, item: string): int = 0
proc clear*(self: ItemContainer) = discard
proc getCount*(self: ItemContainer): int = 0
proc getString*(self: ItemContainer, n: int): string = ""
proc setString*(self: ItemContainer, n: int, s: string) = discard
proc getSelection*(self: ItemContainer): int = 0
proc setSelection*(self: ItemContainer, n: int) = discard
