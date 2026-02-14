import wxnim
import wxnim/styles/frame_styles
import wxnim/styles/button_styles
import wxnim/styles/window_styles

proc main() =
  let app = newApp()

  let frame = newFrame(nil, title = "wxnim Hello World", width = 400, height = 300)

  let panel = newPanel(frame)

  let sizer = newBoxSizer(wxVERTICAL)

  let button = newButton(panel, label = "Click Me!")

  button.bind(evt_BUTTON, proc(e: Event) =
    echo "Button clicked!"
  )

  sizer.add(button, proportion = 0, flag = wxALL, border = 5)
  panel.sizer = sizer

  frame.show()

  app.mainLoop()

main()
