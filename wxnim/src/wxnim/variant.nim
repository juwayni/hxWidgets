import common_types, object, utils
import ../wxraw/types
import ../wxraw/variant_raw

type
  Variant* = ref object of Object

proc finalizeVariant(self: Variant) =
  if self.rawObj != nil: deleteVariantRaw(cast[ptr VariantRaw](self.rawObj))

proc newVariant*(): Variant =
  let raw = newVariantRaw()
  new(result, finalizeVariant); result.rawObj = cast[ptr WxObjectRaw](raw)

proc newVariant*(val: bool): Variant =
  let raw = newVariantRaw(val)
  new(result, finalizeVariant); result.rawObj = cast[ptr WxObjectRaw](raw)

proc newVariant*(val: int): Variant =
  let raw = newVariantRaw(val.cint)
  new(result, finalizeVariant); result.rawObj = cast[ptr WxObjectRaw](raw)

proc newVariant*(val: string): Variant =
  let raw = newVariantRaw(constructWxString(val.cstring))
  new(result, finalizeVariant); result.rawObj = cast[ptr WxObjectRaw](raw)

proc getBool*(self: Variant): bool = cast[ptr VariantRaw](self.rawObj).getBool()
proc getInt*(self: Variant): int = int(cast[ptr VariantRaw](self.rawObj).getLong())
proc getString*(self: Variant): string = $(cast[ptr VariantRaw](self.rawObj).getString())
