import window, common_types, utils
import ../wxraw/types
import ../wxraw/dialog_raw

type
  Dialog* = ref object of Window
  MessageDialog* = ref object of Dialog
  FileDialog* = ref object of Dialog

proc rawDialog*(self: Dialog): ptr DialogRaw =
  cast[ptr DialogRaw](self.rawObj)

proc showModal*(self: Dialog): int =
  int(self.rawDialog.showModal())

proc newMessageDialog*(parent: Window, message: string, caption: string = "Message", style: clong = 0): MessageDialog =
  let raw = newMessageDialogRaw(parent.rawWindow, constructWxString(message.cstring), constructWxString(caption.cstring), style)
  result = MessageDialog(rawObj: cast[ptr WxObjectRaw](raw))
  result.initEvtHandler()

proc newFileDialog*(parent: Window, message: string = "Choose a file", defaultDir: string = "", defaultFile: string = "", wildcard: string = "*.*", style: clong = 0): FileDialog =
  let raw = newFileDialogRaw(parent.rawWindow, constructWxString(message.cstring), constructWxString(defaultDir.cstring), constructWxString(defaultFile.cstring), constructWxString(wildcard.cstring), style)
  result = FileDialog(rawObj: cast[ptr WxObjectRaw](raw))
  result.initEvtHandler()

proc path*(self: FileDialog): string =
  $(cast[ptr FileDialogRaw](self.rawObj).getPath())

proc rawFileDialog*(self: FileDialog): ptr FileDialogRaw =
  cast[ptr FileDialogRaw](self.rawObj)
