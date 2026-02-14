import wxnim
import wxnim/styles/[frame_styles, window_styles, dialog_styles]

proc main() =
  let app = newApp()
  let frame = newFrame(nil, title = "wxnim Dialogs Example", width = 400, height = 300)

  let panel = newPanel(frame)
  let sizer = newBoxSizer(wxVERTICAL)

  let btnMessage = newButton(panel, "Show MessageDialog")
  btnMessage.bind(evt_BUTTON, proc(e: Event) =
    let dlg = newMessageDialog(frame, "Hello, this is a message dialog!", "Message", mbOk or mbIconInformation)
    discard dlg.showModal()
  )
  sizer.add(btnMessage, 0, wxALL or wxEXPAND, 10)

  let btnFile = newButton(panel, "Show FileDialog")
  btnFile.bind(evt_BUTTON, proc(e: Event) =
    let dlg = newFileDialog(frame, "Open File", wildcard = "Nim files (*.nim)|*.nim|All files (*.*)|*.*", style = fdOpen)
    if dlg.showModal() == int(wxID_OK):
      echo "Selected file: ", dlg.path
  )
  sizer.add(btnFile, 0, wxALL or wxEXPAND, 10)

  let btnDir = newButton(panel, "Show DirDialog")
  btnDir.bind(evt_BUTTON, proc(e: Event) =
    let dlg = newDirDialog(frame, "Select Directory")
    if dlg.showModal() == int(wxID_OK):
      echo "Selected directory: ", dlg.path
  )
  sizer.add(btnDir, 0, wxALL or wxEXPAND, 10)

  let btnText = newButton(panel, "Show TextEntryDialog")
  btnText.bind(evt_BUTTON, proc(e: Event) =
    let dlg = newTextEntryDialog(frame, "What is your favorite color?", "Question")
    if dlg.showModal() == int(wxID_OK):
      echo "Favorite color: ", dlg.value
  )
  sizer.add(btnText, 0, wxALL or wxEXPAND, 10)

  panel.sizer = sizer
  frame.show()
  app.mainLoop()

if isMainModule:
  main()
