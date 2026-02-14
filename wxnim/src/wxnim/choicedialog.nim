import window, common_types, dialog, utils
import ../wxraw/types

type
  SingleChoiceDialog* = ref object of Dialog
  MultiChoiceDialog* = ref object of Dialog

proc newSingleChoiceDialog*(parent: Window, message, caption: string, choices: seq[string], style: clong = 0): SingleChoiceDialog =
  # placeholder
  result = SingleChoiceDialog(rawObj: nil)

proc getSelection*(self: SingleChoiceDialog): int = 0
proc getStringSelection*(self: SingleChoiceDialog): string = ""
