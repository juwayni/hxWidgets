import window, common_types, evthandler, utils, dataviewctrl
import ../wxraw/types
import ../wxraw/advanced_widgets_raw

type
  DataViewTreeCtrl* = ref object of DataViewCtrl

proc newDataViewTreeCtrl*(parent: Window, id: int = -1, x, y, width, height: int = -1, style: clong = 0): DataViewTreeCtrl =
  # placeholder
  result = DataViewTreeCtrl(rawObj: nil)
