import common_types, evthandler
import ../wxraw/types

type
  Validator* = ref object of EvtHandler

proc newValidator*(): Validator =
  # placeholder
  result = Validator(rawObj: nil)
