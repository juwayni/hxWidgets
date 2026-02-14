import common_types, gdi, object
import ../wxraw/types
import ../wxraw/gdi_extra_raw

type
  BitmapBundle* = ref object of Object

proc finalizeBitmapBundle(self: BitmapBundle) =
  if self.rawObj != nil: deleteBitmapBundleRaw(cast[ptr BitmapBundleRaw](self.rawObj))

proc newBitmapBundle*(bitmap: Bitmap): BitmapBundle =
  let raw = fromBitmapRaw(cast[ptr BitmapRaw](bitmap.rawObj))
  new(result, finalizeBitmapBundle); result.rawObj = cast[ptr WxObjectRaw](raw)
