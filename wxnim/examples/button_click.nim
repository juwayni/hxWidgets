import wxnim
import wxnim/styles/[frame_styles, window_styles]

proc main() =
  let app = newApp()
  let frame = newFrame(nil, title = "wxnim Button Click", width = 300, height = 200)

  let panel = newPanel(frame)
  let sizer = newBoxSizer(wxVERTICAL)

  let button = newButton(panel, label = "Click Me!")
  button.bind(evt_BUTTON, proc(e: Event) =
    echo "Button clicked!"
  )

  sizer.add(button, 0, wxALL or alignCenter, 50)
  panel.sizer = sizer

  frame.show()
  app.mainLoop()

if isMainModule:
  main()
