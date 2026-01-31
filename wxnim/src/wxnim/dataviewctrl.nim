import window, common_types, object, utils
import ../wxraw/types
import ../wxraw/dataview_raw

type
  DataViewItem* = DataViewItemRaw
  DataViewColumn* = ref object of Object

proc newDataViewColumn*(title: string, renderer: DataViewRenderer, modelColumn: int, width: int = -1): DataViewColumn =
  let raw = newDataViewColumnRaw(constructWxString(title.cstring), renderer.rawObj, modelColumn.cint, width.cint)
  result = DataViewColumn(rawObj: cast[ptr WxObjectRaw](raw))

type
  DataViewRenderer* = ref object of Object
  DataViewTextRenderer* = ref object of DataViewRenderer
  DataViewBitmapRenderer* = ref object of DataViewRenderer

proc newDataViewTextRenderer*(): DataViewTextRenderer =
  let raw = newDataViewTextRendererRaw()
  result = DataViewTextRenderer(rawObj: raw)

proc newDataViewBitmapRenderer*(): DataViewBitmapRenderer =
  let raw = newDataViewBitmapRendererRaw()
  result = DataViewBitmapRenderer(rawObj: raw)

type
  DataViewCtrl* = ref object of Control

proc newDataViewCtrl*(parent: Window, id: int = -1, x, y, width, height: int = -1, style: clong = 0): DataViewCtrl =
  let raw = newDataViewCtrlRaw(parent.rawWindow, id.cint, PointRaw(x: x.cint, y: y.cint), SizeRaw(x: width.cint, y: height.cint), style)
  result = DataViewCtrl(rawObj: cast[ptr WxObjectRaw](raw)); result.initEvtHandler()

proc appendColumn*(self: DataViewCtrl, col: DataViewColumn): bool =
  cast[ptr DataViewCtrlRaw](self.rawObj).appendColumn(col.rawObj)
