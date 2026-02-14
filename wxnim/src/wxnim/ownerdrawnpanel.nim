import window, common_types, evthandler
import ../wxraw/types

type
  OwnerDrawnPanel* = ref object of Panel

proc newOwnerDrawnPanel*(parent: Window, id: int = -1, x, y, width, height: int = -1, style: clong = 0): OwnerDrawnPanel =
  # placeholder
  result = OwnerDrawnPanel(rawObj: nil)
