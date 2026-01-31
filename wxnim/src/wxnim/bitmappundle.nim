import common_types, gdi, object
import ../wxraw/types

type
  BitmapBundle* = ref object of Object

proc newBitmapBundle*(bitmap: Bitmap): BitmapBundle =
  # placeholder for raw call
  result = BitmapBundle(rawObj: nil)
