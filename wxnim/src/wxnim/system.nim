import common_types, evthandler, utils, gdi
import ../wxraw/types
import ../wxraw/system_raw
import ../wxraw/system_extra_raw

type
  Timer* = ref object of EvtHandler
  Config* = ref object of Object
  Locale* = ref object of Object
  Clipboard* = ref object of Object
  PlatformInfo* = object

proc finalizeTimer(self: Timer) =
  if self.rawObj != nil: deleteTimerRaw(cast[ptr TimerRaw](self.rawObj))
proc newTimer*(owner: EvtHandler, id: int = -1): Timer =
  let raw = newTimerRaw(owner.rawEvtHandler, id.cint)
  new(result, finalizeTimer); result.rawObj = cast[ptr WxObjectRaw](raw); result.initEvtHandler()
proc start*(self: Timer, milliseconds: int = -1, oneShot: bool = false): bool = cast[ptr TimerRaw](self.rawObj).start(milliseconds.cint, oneShot)
proc stop*(self: Timer) = cast[ptr TimerRaw](self.rawObj).stop()

proc finalizeConfig(self: Config) =
  if self.rawObj != nil: deleteConfigRaw(cast[ptr ConfigRaw](self.rawObj))
proc newConfig*(appName: string): Config =
  let raw = newConfigRaw(constructWxString(appName.cstring))
  new(result, finalizeConfig); result.rawObj = cast[ptr WxObjectRaw](raw)
proc read*(self: Config, key, defaultVal: string): string = $(cast[ptr ConfigRaw](self.rawObj).read(constructWxString(key.cstring), constructWxString(defaultVal.cstring)))
proc write*(self: Config, key, value: string): bool = cast[ptr ConfigRaw](self.rawObj).write(constructWxString(key.cstring), constructWxString(value.cstring))

type
  StandardPaths* = object
proc executablePath*(self: StandardPaths): string = $(getExecutablePath())
proc userDataDir*(self: StandardPaths): string = $(getUserDataDir())

type
  SystemSettings* = object
proc getMetric*(self: SystemSettings, metric: int, win: Window = nil): int =
  let rawWin = if win.isNull: nil else: win.rawWindow
  int(getMetric(metric.cint, rawWin))

proc osName*(self: PlatformInfo): string = $(getPlatformName())
proc is64Bit*(self: PlatformInfo): bool = is64Bit()

proc getClipboard*(): Clipboard =
  result = Clipboard(rawObj: wxTheClipboard)

proc open*(self: Clipboard): bool = self.rawObj.openClipboard()
proc close*(self: Clipboard) = self.rawObj.closeClipboard()
