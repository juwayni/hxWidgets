import common_types, object, utils, gdi
import ../wxraw/types

proc newTextDataObjectRaw*(text: WxStringRaw): ptr WxObjectRaw {.importcpp: "new wxTextDataObject(@)", header: "wx/dataobj.h".}
proc getText*(self: ptr WxObjectRaw): WxStringRaw {.importcpp: "((wxTextDataObject*)#)->GetText()", header: "wx/dataobj.h".}
proc setText*(self: ptr WxObjectRaw, text: WxStringRaw) {.importcpp: "((wxTextDataObject*)#)->SetText(@)", header: "wx/dataobj.h".}

type
  DataObject* = ref object of Object
  DataObjectSimple* = ref object of DataObject
  TextDataObject* = ref object of DataObjectSimple

proc newTextDataObject*(text: string = ""): TextDataObject =
  let raw = newTextDataObjectRaw(constructWxString(text.cstring))
  result = TextDataObject(rawObj: raw)

proc text*(self: TextDataObject): string = $(self.rawObj.getText())
proc `text=`*(self: TextDataObject, val: string) = self.rawObj.setText(constructWxString(val.cstring))
