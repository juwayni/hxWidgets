import common_types, object, utils, gdi
import ../wxraw/types

type
  DataObject* = ref object of Object
  DataObjectSimple* = ref object of DataObject
  TextDataObject* = ref object of DataObjectSimple

proc newTextDataObject*(text: string = ""): TextDataObject =
  # placeholder
  result = TextDataObject(rawObj: nil)
