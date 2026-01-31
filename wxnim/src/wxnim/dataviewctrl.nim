import common_types, object, utils
import ../wxraw/types
import ../wxraw/dataview_raw

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
