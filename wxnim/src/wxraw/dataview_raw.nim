import types

# DataView Renderers
proc newDataViewTextRendererRaw*(): ptr WxObjectRaw {.importcpp: "new wxDataViewTextRenderer()", header: "wx/dataview.h".}
proc newDataViewBitmapRendererRaw*(): ptr WxObjectRaw {.importcpp: "new wxDataViewBitmapRenderer()", header: "wx/dataview.h".}
proc newDataViewToggleRendererRaw*(): ptr WxObjectRaw {.importcpp: "new wxDataViewToggleRenderer()", header: "wx/dataview.h".}
proc newDataViewProgressRendererRaw*(): ptr WxObjectRaw {.importcpp: "new wxDataViewProgressRenderer()", header: "wx/dataview.h".}

proc appendColumn*(self: ptr DataViewCtrlRaw, col: ptr any): bool {.importcpp: "AppendColumn(@)", header: "wx/dataview.h".}
