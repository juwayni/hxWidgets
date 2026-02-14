import window, common_types, dialog, utils, arraystring
import ../wxraw/types

proc newSingleChoiceDialogRaw*(parent: ptr WindowRaw, message, caption: WxStringRaw, choices: ptr ArrayStringRaw, style: clong): ptr DialogRaw {.importcpp: "new wxSingleChoiceDialog(@)", header: "wx/choicdlg.h".}
proc getSelection*(self: ptr DialogRaw): cint {.importcpp: "((wxSingleChoiceDialog*)#)->GetSelection()", header: "wx/choicdlg.h".}
proc getStringSelection*(self: ptr DialogRaw): WxStringRaw {.importcpp: "((wxSingleChoiceDialog*)#)->GetStringSelection()", header: "wx/choicdlg.h".}

type
  SingleChoiceDialog* = ref object of Dialog
  MultiChoiceDialog* = ref object of Dialog

proc newSingleChoiceDialog*(parent: Window, message, caption: string, choices: seq[string], style: clong = 0): SingleChoiceDialog =
  let arr = fromSeq(choices)
  let raw = newSingleChoiceDialogRaw(parent.rawWindow, constructWxString(message.cstring), constructWxString(caption.cstring), cast[ptr ArrayStringRaw](arr.rawObj), style)
  result = SingleChoiceDialog(rawObj: cast[ptr WxObjectRaw](raw)); result.initEvtHandler()

proc selection*(self: SingleChoiceDialog): int = int(cast[ptr DialogRaw](self.rawObj).getSelection())
proc stringSelection*(self: SingleChoiceDialog): string = $(cast[ptr DialogRaw](self.rawObj).getStringSelection())
