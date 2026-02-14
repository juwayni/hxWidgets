import wxnim
import wxnim/styles/[frame_styles, window_styles, textctrl_styles]

proc main() =
  let app = newApp()
  let frame = newFrame(nil, title = "wxnim Text Input", width = 400, height = 300)

  let panel = newPanel(frame)
  let sizer = newBoxSizer(wxVERTICAL)

  let label = newStaticText(panel, label = "Enter your name:")
  sizer.add(label, 0, wxALL, 10)

  let textCtrl = newTextCtrl(panel, text = "John Doe")
  sizer.add(textCtrl, 0, wxEXPAND or wxALL, 10)

  let okButton = newButton(panel, label = "OK")
  okButton.bind(evt_BUTTON, proc(e: Event) =
    echo "Hello, ", textCtrl.value, "!"
  )
  sizer.add(okButton, 0, wxALL or alignRight, 10)

  panel.sizer = sizer
  frame.show()
  app.mainLoop()

if isMainModule:
  main()
