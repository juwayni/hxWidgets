import common_types, evthandler, utils, gdi, bitmapbundle
import ../wxraw/types

type
  TaskBarIconRaw* {.importcpp: "wxTaskBarIcon", header: "wx/taskbar.h", pure.} = object of EvtHandlerRaw

proc newTaskBarIconRaw*(): ptr TaskBarIconRaw {.importcpp: "new wxTaskBarIcon()", header: "wx/taskbar.h".}
proc setIcon*(self: ptr TaskBarIconRaw, icon: ptr IconRaw, tooltip: WxStringRaw): bool {.importcpp: "SetIcon(@)", header: "wx/taskbar.h".}
proc removeIcon*(self: ptr TaskBarIconRaw): bool {.importcpp: "RemoveIcon()", header: "wx/taskbar.h".}

type
  TaskBarIcon* = ref object of EvtHandler

proc newTaskBarIcon*(): TaskBarIcon =
  let raw = newTaskBarIconRaw()
  result = TaskBarIcon(rawObj: cast[ptr WxObjectRaw](raw)); result.initEvtHandler()

proc setIcon*(self: TaskBarIcon, icon: Icon, tooltip: string = ""): bool =
  cast[ptr TaskBarIconRaw](self.rawObj).setIcon(cast[ptr IconRaw](icon.rawObj), constructWxString(tooltip.cstring))

proc removeIcon*(self: TaskBarIcon): bool =
  cast[ptr TaskBarIconRaw](self.rawObj).removeIcon()
