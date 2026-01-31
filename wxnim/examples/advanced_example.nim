import wxnim
import wxnim/styles/frame_styles
import wxnim/styles/button_styles
import wxnim/styles/window_styles
import wxnim/styles/textctrl_styles
import wxnim/textctrl
import wxnim/menu
import wxnim/dialog
import wxnim/styles/dialog_styles
import wxnim/controls

proc main() =
  let app = newApp()

  let frame = newFrame(nil, title = "wxnim Advanced Example", width = 600, height = 400)

  # Menu
  let menuBar = newMenuBar()
  let fileMenu = newMenu()
  discard fileMenu.append(101, "Open")
  discard fileMenu.append(102, "Save")
  fileMenu.appendSeparator()
  discard fileMenu.append(int(wxID_EXIT), "Exit")
  discard menuBar.append(fileMenu, "File")

  let helpMenu = newMenu()
  discard helpMenu.append(201, "About")
  discard menuBar.append(helpMenu, "Help")

  app.topWindow = frame

  let panel = newPanel(frame)
  let mainSizer = newBoxSizer(wxVERTICAL)

  let textLabel = newStaticText(panel, "Enter some text:")
  mainSizer.add(textLabel, 0, wxALL, 5)

  let textCtrl = newTextCtrl(panel, style = teMultiline)
  mainSizer.add(textCtrl, 1, wxEXPAND or wxALL, 5)

  let bottomSizer = newBoxSizer(wxHORIZONTAL)
  let okButton = newButton(panel, "Show Message")
  let fileButton = newButton(panel, "Pick File")

  bottomSizer.add(okButton, 0, wxALL, 5)
  bottomSizer.add(fileButton, 0, wxALL, 5)

  mainSizer.add(bottomSizer, 0, wxHORIZONTAL)

  okButton.bind(evt_BUTTON, proc(e: Event) =
    let dlg = newMessageDialog(frame, "Hello from wxnim!", "Notice", mbOk or mbIconInformation)
    discard dlg.showModal()
  )

  fileButton.bind(evt_BUTTON, proc(e: Event) =
    let dlg = newFileDialog(frame)
    if dlg.showModal() == int(wxID_OK):
      echo "Picked a file"
  )

  panel.sizer = mainSizer

  frame.show()
  app.mainLoop()

main()
