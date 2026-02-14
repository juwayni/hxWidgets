import wxnim, view
import wxnim/styles/[window_styles, textctrl_styles]

type
  LogView* = ref object of View

var globalLogText: TextCtrl

proc newLogView*(parent: Window): LogView =
  let v = newPanel(parent)
  let sizer = newBoxSizer(wxVERTICAL)
  let text = newTextCtrl(v, style = teMultiline)
  globalLogText = text
  sizer.add(text, 1, wxEXPAND or wxALL)
  v.sizer = sizer
  result = cast[LogView](v)

proc log*(text: string) =
  if globalLogText != nil:
    if globalLogText.value.len == 0:
      globalLogText.appendText(text)
    else:
      globalLogText.appendText("\n" + text)
