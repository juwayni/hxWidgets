import window, common_types, evthandler, utils, dataviewctrl
import ../wxraw/types
import ../wxraw/advanced_widgets_raw

proc newDataViewListCtrlRaw*(parent: ptr WindowRaw, id: cint, pos: PointRaw, size: SizeRaw, style: clong): ptr DataViewListCtrlRaw {.importcpp: "new wxDataViewListCtrl(@)", header: "wx/dataview.h".}
proc appendToggleColumn*(self: ptr DataViewListCtrlRaw, label: WxStringRaw) {.importcpp: "AppendToggleColumn(@)", header: "wx/dataview.h".}
proc appendTextColumn*(self: ptr DataViewListCtrlRaw, label: WxStringRaw) {.importcpp: "AppendTextColumn(@)", header: "wx/dataview.h".}

type
  DataViewListCtrl* = ref object of DataViewCtrl

proc newDataViewListCtrl*(parent: Window, id: int = -1, x, y, width, height: int = -1, style: clong = 0): DataViewListCtrl =
  let raw = newDataViewListCtrlRaw(parent.rawWindow, id.cint, PointRaw(x: x.cint, y: y.cint), SizeRaw(x: width.cint, y: height.cint), style)
  result = DataViewListCtrl(rawObj: cast[ptr WxObjectRaw](raw)); result.initEvtHandler()

proc appendToggleColumn*(self: DataViewListCtrl, label: string) =
  cast[ptr DataViewListCtrlRaw](self.rawObj).appendToggleColumn(constructWxString(label.cstring))

proc appendTextColumn*(self: DataViewListCtrl, label: string) =
  cast[ptr DataViewListCtrlRaw](self.rawObj).appendTextColumn(constructWxString(label.cstring))
