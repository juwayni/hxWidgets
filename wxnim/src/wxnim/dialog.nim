import window, common_types, utils, evthandler
import ../wxraw/types
import ../wxraw/dialog_raw
import ../wxraw/dialog_extra_raw

type
  Dialog* = ref object of TopLevelWindow
  MessageDialog* = ref object of Dialog
  FileDialog* = ref object of Dialog
  DirDialog* = ref object of Dialog
  TextEntryDialog* = ref object of Dialog
  PasswordEntryDialog* = ref object of Dialog

proc rawDialog*(self: Dialog): ptr DialogRaw = cast[ptr DialogRaw](self.rawObj)

proc showModal*(self: Dialog): int = int(self.rawDialog.showModal())

proc newMessageDialog*(parent: Window, message: string, caption: string = "Message", style: clong = 0): MessageDialog =
  let raw = newMessageDialogRaw(parent.rawWindow, constructWxString(message.cstring), constructWxString(caption.cstring), style)
  result = MessageDialog(rawObj: cast[ptr WxObjectRaw](raw)); result.initEvtHandler()

proc newFileDialog*(parent: Window, message: string = "Choose a file", defaultDir: string = "", defaultFile: string = "", wildcard: string = "*.*", style: clong = 0): FileDialog =
  let raw = newFileDialogRaw(parent.rawWindow, constructWxString(message.cstring), constructWxString(defaultDir.cstring), constructWxString(defaultFile.cstring), constructWxString(wildcard.cstring), style)
  result = FileDialog(rawObj: cast[ptr WxObjectRaw](raw)); result.initEvtHandler()

proc path*(self: FileDialog): string = $(cast[ptr FileDialogRaw](self.rawObj).getPath())

proc newDirDialog*(parent: Window, message: string = "Choose a directory", defaultPath: string = "", style: clong = 0): DirDialog =
  let raw = newDirDialogRaw(parent.rawWindow, constructWxString(message.cstring), constructWxString(defaultPath.cstring), style)
  result = DirDialog(rawObj: cast[ptr WxObjectRaw](raw)); result.initEvtHandler()

proc path*(self: DirDialog): string = $(cast[ptr DirDialogRaw](self.rawObj).getPath())

proc newTextEntryDialog*(parent: Window, message: string, caption: string = "Please enter text", value: string = "", style: clong = 0): TextEntryDialog =
  let raw = newTextEntryDialogRaw(parent.rawWindow, constructWxString(message.cstring), constructWxString(caption.cstring), constructWxString(value.cstring), style)
  result = TextEntryDialog(rawObj: cast[ptr WxObjectRaw](raw)); result.initEvtHandler()

proc value*(self: TextEntryDialog): string = $(cast[ptr DialogRaw](self.rawObj).getValue())

proc newPasswordEntryDialog*(parent: Window, message: string, caption: string = "Please enter password", value: string = "", style: clong = 0): PasswordEntryDialog =
  let raw = newPasswordEntryDialogRaw(parent.rawWindow, constructWxString(message.cstring), constructWxString(caption.cstring), constructWxString(value.cstring), style)
  result = PasswordEntryDialog(rawObj: cast[ptr WxObjectRaw](raw)); result.initEvtHandler()
