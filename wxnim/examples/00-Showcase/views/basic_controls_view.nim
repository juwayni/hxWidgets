import wxnim, view, log_view
import wxnim/styles/[window_styles, textctrl_styles, gauge_styles, slider_styles, simple_styles, radiobuttonstyle]

type
  BasicControlsView* = ref object of View

proc createButtons(self: BasicControlsView, targetSizer: Sizer) =
  let buttonSizer = newBoxSizer(wxHORIZONTAL)
  let frame = self.createFrame("Buttons", buttonSizer)

  let btn1 = newButton(frame, "Button 1")
  btn1.bind(evt_BUTTON, proc(e: Event) = log("Button 1 clicked"))
  buttonSizer.add(btn1, 0, wxALL, 2)

  let btn2 = newButton(frame, "Button 2")
  btn2.bind(evt_BUTTON, proc(e: Event) = log("Button 2 clicked"))
  buttonSizer.add(btn2, 0, wxALL, 2)

  targetSizer.add(frame, 0, wxEXPAND)

proc createTextCtrls(self: BasicControlsView, targetSizer: Sizer) =
  let textSizer = newBoxSizer(wxVERTICAL)
  let frame = self.createFrame("Text Controls", textSizer)

  textSizer.add(newTextCtrl(frame, "Standard text"), 0, wxEXPAND or wxALL, 2)
  textSizer.add(newTextCtrl(frame, "Password", style = tePassword), 0, wxEXPAND or wxALL, 2)
  textSizer.add(newTextCtrl(frame, "Multiline", style = teMultiline), 1, wxEXPAND or wxALL, 2)

  targetSizer.add(frame, 1, wxEXPAND)

proc createRadioCtrls(self: BasicControlsView, targetSizer: Sizer) =
  let innerSizer = newBoxSizer(wxHORIZONTAL)
  let frame = self.createFrame("Check / Radio", innerSizer)

  let vsizer = newBoxSizer(wxVERTICAL)
  vsizer.add(newCheckBox(frame, "Check 1"), 0, wxALL, 2)
  vsizer.add(newCheckBox(frame, "Check 2"), 0, wxALL, 2)
  innerSizer.add(vsizer, 1, wxEXPAND)

  let vsizer2 = newBoxSizer(wxVERTICAL)
  vsizer2.add(newRadioButton(frame, "Radio 1", style = rbGroup), 0, wxALL, 2)
  vsizer2.add(newRadioButton(frame, "Radio 2"), 0, wxALL, 2)
  innerSizer.add(vsizer2, 1, wxEXPAND)

  targetSizer.add(frame, 0, wxEXPAND)

proc newBasicControlsView*(parent: Window): BasicControlsView =
  let v = newPanel(parent)
  let mainSizer = newBoxSizer(wxVERTICAL)
  let view = cast[BasicControlsView](v)

  view.createButtons(mainSizer)
  mainSizer.addSpacer(10)
  view.createTextCtrls(mainSizer)
  mainSizer.addSpacer(10)
  view.createRadioCtrls(mainSizer)

  v.sizer = mainSizer
  return view
