import wxnim
import wxnim/styles/[window_styles]

type
  View* = ref object of Panel

proc newView*(parent: Window): View =
  let v = newPanel(parent)
  result = cast[View](v)

proc createFrame*(self: View, title: string, innerSizer: Sizer, parentWindow: Window = nil): Panel =
  let pw = if parentWindow == nil: cast[Window](self) else: parentWindow
  let frame = newPanel(pw)
  let sizer = newStaticBoxSizer(wxVERTICAL, frame, title)
  sizer.add(innerSizer, 1, wxEXPAND or wxALL, 5)
  frame.sizer = sizer
  return frame

proc label*(self: View, text: string, targetSizer: Sizer = nil, parentWindow: Window = nil, bold: bool = false, underlined: bool = false) =
  let pw = if parentWindow == nil: cast[Window](self) else: parentWindow
  let label = newStaticText(pw, text)
  let ts = if targetSizer == nil: self.sizer else: targetSizer

  if bold or underlined:
    # Font handling would go here
    discard

  ts.add(label, 0, wxALL, 2)
