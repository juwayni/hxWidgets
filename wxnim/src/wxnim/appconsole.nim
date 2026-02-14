import common_types, evthandler
import ../wxraw/types

type
  AppConsole* = ref object of EvtHandler
  AppTraits* = ref object of Object

proc getTraits*(self: AppConsole): AppTraits =
  # placeholder
  result = AppTraits(rawObj: nil)
