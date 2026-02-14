import common_types, dc, gdi
import ../wxraw/types

type
  BufferedDC* = ref object of MemoryDC
  BufferedPaintDC* = ref object of BufferedDC

proc newBufferedDC*(dc: DC, buffer: Bitmap, style: int = 0): BufferedDC =
  # placeholder
  result = BufferedDC(rawObj: nil)
