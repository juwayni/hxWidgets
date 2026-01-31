import wxnim
import wxnim/styles/[frame_styles, button_styles, window_styles, textctrl_styles, advanced_styles, dialog_styles, calendarctrl_styles, hyperlinkctrl_styles, notebook_styles]
import wxnim/[textctrl, menu, dialog, controls, gdi, treectrl, listctrl, grid, webview, notebook, system, calendarctrl, hyperlinkctrl, dataviewctrl, propertygrid]
import wxnim/sizers/[boxsizer, gridsizer]

proc main() =
  let app = newApp()

  let frame = newFrame(nil, title = "wxnim Mega Kitchen Sink", width = 1000, height = 800)
  app.topWindow = frame

  # Menus
  let menuBar = newMenuBar()
  let fileMenu = newMenu()
  discard fileMenu.append(101, "&Open\tCtrl+O")
  discard fileMenu.append(102, "&Save\tCtrl+S")
  fileMenu.appendSeparator()
  discard fileMenu.append(int(wxID_EXIT), "E&xit")
  discard menuBar.append(fileMenu, "&File")

  let mainPanel = newPanel(frame)
  let mainSizer = newBoxSizer(wxVERTICAL)

  # Notebook
  let notebook = newNotebook(mainPanel, style = nbDefault)
  mainSizer.add(notebook, 1, wxEXPAND or wxALL, 5)

  # Page 1: Basic Controls
  let page1 = newPanel(notebook)
  let page1Sizer = newBoxSizer(wxVERTICAL)
  let btn = newButton(page1, "Click for Dialog")
  page1Sizer.add(btn, 0, wxALL, 5)
  let link = newHyperlinkCtrl(page1, "wxnim on GitHub", "https://github.com/example/wxnim")
  page1Sizer.add(link, 0, wxALL, 5)
  page1.sizer = page1Sizer
  discard notebook.addPage(page1, "Basic")

  # Page 2: Lists & Trees
  let page2 = newPanel(notebook)
  let page2Sizer = newBoxSizer(wxHORIZONTAL)
  let list = newListCtrl(page2, style = lcReport)
  discard list.insertColumn(0, "Feature")
  discard list.insertColumn(1, "Status")
  discard list.insertItem(0, "Events")
  discard list.setItem(0, 1, "Functional")
  page2Sizer.add(list, 1, wxEXPAND or wxALL, 5)
  let tree = newTreeCtrl(page2)
  let root = tree.addRoot("wxnim")
  discard tree.appendItem(root, "Layer A")
  discard tree.appendItem(root, "Layer B")
  page2Sizer.add(tree, 1, wxEXPAND or wxALL, 5)
  page2.sizer = page2Sizer
  discard notebook.addPage(page2, "Hierarchical")

  # Page 3: Advanced
  let page3 = newPanel(notebook)
  let page3Sizer = newBoxSizer(wxVERTICAL)
  let cal = newCalendarCtrl(page3)
  page3Sizer.add(cal, 0, wxALL or wxAlignCenter, 5)
  let grid = newGrid(page3)
  discard grid.createGrid(5, 5)
  page3Sizer.add(grid, 1, wxEXPAND or wxALL, 5)
  page3.sizer = page3Sizer
  discard notebook.addPage(page3, "Advanced")

  mainPanel.sizer = mainSizer

  btn.bind(evt_BUTTON, proc(e: Event) =
    let dlg = newMessageDialog(frame, "Welcome to the Mega Kitchen Sink!", "wxnim", mbOk)
    discard dlg.showModal()
  )

  frame.show()
  app.mainLoop()

main()
