import common_types, utils
import ../wxraw/types
import ../wxraw/system_extra_raw

type
  PlatformInfo* = object

proc osName*(self: PlatformInfo): string = $(getPlatformName())
proc is64Bit*(self: PlatformInfo): bool = is64Bit()

type
  Process* = ref object of EvtHandler

proc newProcess*(parent: EvtHandler = nil, id: int = -1): Process =
  let raw = newProcessRaw(if parent == nil: nil else: parent.rawEvtHandler, id.cint)
  result = Process(rawObj: raw); result.initEvtHandler()

proc kill*(self: Process, pid: int, sig: int = 9): int = int(killProcess(pid.clong, sig.cint))
