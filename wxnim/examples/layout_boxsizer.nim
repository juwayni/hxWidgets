import wxnim
import wxnim/styles/[frame_styles, window_styles]

proc main() =
  let app = newApp()
  let frame = newFrame(nil, title = "wxnim Layout with BoxSizer", width = 500, height = 400)

  let panel = newPanel(frame)
  let mainSizer = newBoxSizer(wxVERTICAL)

  let topSizer = newBoxSizer(wxHORIZONTAL)
  topSizer.add(newButton(panel, "Left"), 1, wxEXPAND or wxALL, 5)
  topSizer.add(newButton(panel, "Center"), 1, wxEXPAND or wxALL, 5)
  topSizer.add(newButton(panel, "Right"), 1, wxEXPAND or wxALL, 5)
  mainSizer.add(topSizer, 0, wxEXPAND)

  let middleSizer = newBoxSizer(wxVERTICAL)
  middleSizer.add(newStaticText(panel, "A label in the middle"), 0, wxALL or alignCenter, 5)
  middleSizer.add(newTextCtrl(panel, "A text control in the middle", style = teMultiline), 1, wxEXPAND or wxALL, 5)
  mainSizer.add(middleSizer, 1, wxEXPAND)

  let bottomSizer = newBoxSizer(wxHORIZONTAL)
  bottomSizer.addSpacer(200)
  bottomSizer.add(newButton(panel, "OK"), 0, wxALL, 10)
  bottomSizer.add(newButton(panel, "Cancel"), 0, wxALL, 10)
  mainSizer.add(bottomSizer, 0, wxEXPAND)

  panel.sizer = mainSizer
  frame.show()
  app.mainLoop()

if isMainModule:
  main()
