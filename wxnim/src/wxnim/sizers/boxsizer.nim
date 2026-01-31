import sizer
import ../../wxraw/types
import ../../wxraw/sizer_raw
import ../../wxraw/window_raw
import ../object

type
  BoxSizer* = ref object of Sizer

proc newBoxSizer*(orient: int): BoxSizer =
  let raw = newBoxSizerRaw(orient.cint)
  result = BoxSizer(rawObj: cast[ptr WxObjectRaw](raw))
