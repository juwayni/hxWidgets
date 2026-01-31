import wxnim
import wxnim/styles/[frame_styles, button_styles, window_styles, textctrl_styles, advanced_styles, dialog_styles]
import wxnim/[textctrl, menu, dialog, controls, gdi, advanced_widgets, system]
import wxnim/sizers/[boxsizer, gridsizer]

proc main() =
  let app = newApp()

  let frame = newFrame(nil, title = "wxnim Kitchen Sink", width = 800, height = 600)

  # Menus
  let menuBar = newMenuBar()
  let fileMenu = newMenu()
  discard fileMenu.append(101, "&Open\tCtrl+O")
  discard fileMenu.append(102, "&Save\tCtrl+S")
  fileMenu.appendSeparator()
  discard fileMenu.append(int(wxID_EXIT), "E&xit")
  discard menuBar.append(fileMenu, "&File")

  let helpMenu = newMenu()
  discard helpMenu.append(201, "&About")
  discard menuBar.append(helpMenu, "&Help")

  # Note: in a real implementation frame.menuBar = menuBar

  let mainPanel = newPanel(frame)
  let mainSizer = newBoxSizer(wxVERTICAL)

  # Notebook
  let notebook = newNotebook(mainPanel)
  mainSizer.add(notebook, 1, wxEXPAND or wxALL, 5)

  # Page 1: Basic Controls
  let page1 = newPanel(notebook)
  let page1Sizer = newBoxSizer(wxVERTICAL)

  let btn = newButton(page1, "Click me!")
  page1Sizer.add(btn, 0, wxALL, 5)

  let chk = newCheckBox(page1, "Check me")
  page1Sizer.add(chk, 0, wxALL, 5)

  let txt = newTextCtrl(page1, "Some text", style = teMultiline)
  page1Sizer.add(txt, 1, wxEXPAND or wxALL, 5)

  page1.sizer = page1Sizer
  discard notebook.addPage(page1, "Basic")

  # Page 2: Lists & Trees
  let page2 = newPanel(notebook)
  let page2Sizer = newBoxSizer(wxHORIZONTAL)

  let list = newListCtrl(page2, style = lcReport)
  discard list.insertColumn(0, "Name")
  discard list.insertColumn(1, "Value")
  discard list.insertItem(0, "Item 1")
  discard list.setItem(0, 1, "100")
  page2Sizer.add(list, 1, wxEXPAND or wxALL, 5)

  let tree = newTreeCtrl(page2)
  let root = tree.addRoot("Root")
  discard tree.appendItem(root, "Child 1")
  discard tree.appendItem(root, "Child 2")
  page2Sizer.add(tree, 1, wxEXPAND or wxALL, 5)

  page2.sizer = page2Sizer
  discard notebook.addPage(page2, "Complex")

  mainPanel.sizer = mainSizer

  # Events
  btn.bind(evt_BUTTON, proc(e: Event) =
    let dlg = newMessageDialog(frame, "Button clicked!", "Info", mbOk or mbIconInformation)
    discard dlg.showModal()
  )

  frame.show()
  app.mainLoop()

main()
