import common_types, evthandler, utils
import ../wxraw/types
import ../wxraw/system_raw

type
  Timer* = ref object of EvtHandler

proc finalizeTimer(self: Timer) =
  if self.rawObj != nil:
    deleteTimerRaw(cast[ptr TimerRaw](self.rawObj))

proc newTimer*(owner: EvtHandler, id: int = -1): Timer =
  let raw = newTimerRaw(owner.rawEvtHandler, id.cint)
  new(result, finalizeTimer)
  result.rawObj = cast[ptr WxObjectRaw](raw)
  result.initEvtHandler()

proc start*(self: Timer, milliseconds: int = -1, oneShot: bool = false): bool =
  cast[ptr TimerRaw](self.rawObj).start(milliseconds.cint, oneShot)

proc stop*(self: Timer) =
  cast[ptr TimerRaw](self.rawObj).stop()

type
  StandardPaths* = object

proc executablePath*(self: StandardPaths): string = $(getExecutablePath())
proc userDataDir*(self: StandardPaths): string = $(getUserDataDir())

type
  SystemSettings* = object

proc getMetric*(self: SystemSettings, metric: int, win: Window = nil): int =
  let rawWin = if win.isNull: nil else: win.rawWindow
  int(getMetric(metric.cint, rawWin))
