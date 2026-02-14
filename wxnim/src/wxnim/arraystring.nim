import common_types, object, utils
import ../wxraw/types
import ../wxraw/arraystring_raw

type
  ArrayString* = ref object of Object

proc finalizeArrayString(self: ArrayString) =
  if self.rawObj != nil: deleteArrayStringRaw(cast[ptr ArrayStringRaw](self.rawObj))

proc newArrayString*(): ArrayString =
  let raw = newArrayStringRaw()
  new(result, finalizeArrayString); result.rawObj = cast[ptr WxObjectRaw](raw)

proc add*(self: ArrayString, str: string): int =
  int(cast[ptr ArrayStringRaw](self.rawObj).add(constructWxString(str.cstring)))

proc count*(self: ArrayString): int =
  int(cast[ptr ArrayStringRaw](self.rawObj).getCount())

proc item*(self: ArrayString, index: int): string =
  $(cast[ptr ArrayStringRaw](self.rawObj).item(index.cint))

proc toSeq*(self: ArrayString): seq[string] =
  result = @[]
  for i in 0 ..< self.count:
    result.add(self.item(i))

proc fromSeq*(s: seq[string]): ArrayString =
  result = newArrayString()
  for item in s:
    discard result.add(item)
