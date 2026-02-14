import wxnim
import wxnim/styles/[frame_styles, button_styles, window_styles, textctrl_styles, listctrl_styles, treectrl_styles, dialog_styles, calendarctrl_styles, hyperlinkctrl_styles, notebook_styles, grid_styles, defs, alignment]
import wxnim/[textctrl, menu, dialog, controls, gdi, treectrl, listctrl, grid, webview, notebook, system, calendarctrl, hyperlinkctrl, dataviewctrl, propertygrid, gdi_extra, process, dataviewlistctrl, collapsiblepane, taskbaricon, mousestate]
import wxnim/sizers/[boxsizer, gridsizer, sizer]

proc main() =
  let app = newApp()

  let frame = newFrame(nil, title = "wxnim Ultra Kitchen Sink", width = 1200, height = 900)
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
  let mainSizer = newBoxSizer(orientVertical)

  # Notebook
  let notebook = newNotebook(mainPanel, style = nbDefault)
  mainSizer.add(notebook, 1, wxEXPAND or wxALL, 5)

  # Page 1: All Basic Controls
  let page1 = newPanel(notebook)
  let page1Sizer = newBoxSizer(orientVertical)
  let btn = newButton(page1, "Click for Dialog")
  page1Sizer.add(btn, 0, wxALL, 5)
  let link = newHyperlinkCtrl(page1, "wxnim Project", "https://github.com/example/wxnim")
  page1Sizer.add(link, 0, wxALL, 5)
  let gauge = newGauge(page1, range = 100)
  gauge.value = 50
  page1Sizer.add(gauge, 0, wxEXPAND or wxALL, 5)
  let combo = newComboBox(page1, "Option 1")
  discard combo.append("Option 2")
  page1Sizer.add(combo, 0, wxALL, 5)
  page1.sizer = page1Sizer
  discard notebook.addPage(page1, "Controls")

  # Page 2: Lists & Trees
  let page2 = newPanel(notebook)
  let page2Sizer = newBoxSizer(orientHorizontal)
  let list = newListCtrl(page2, style = lcReport)
  discard list.insertColumn(0, "Feature")
  discard list.insertColumn(1, "Status")
  discard list.insertItem(0, "Bindings")
  discard list.setItem(0, 1, "Exhaustive")
  page2Sizer.add(list, 1, wxEXPAND or wxALL, 5)
  let tree = newTreeCtrl(page2)
  let root = tree.addRoot("wxnim Project")
  discard tree.appendItem(root, "Public API")
  discard tree.appendItem(root, "Raw Bindings")
  page2Sizer.add(tree, 1, wxEXPAND or wxALL, 5)
  page2.sizer = page2Sizer
  discard notebook.addPage(page2, "Hierarchical")

  # Page 3: Complex Widgets
  let page3 = newPanel(notebook)
  let page3Sizer = newBoxSizer(orientVertical)
  let dv = newDataViewListCtrl(page3)
  dv.appendTextColumn("Column 1")
  dv.appendToggleColumn("Column 2")
  page3Sizer.add(dv, 1, wxEXPAND or wxALL, 5)
  let grid = newGrid(page3)
  discard grid.createGrid(10, 10)
  page3Sizer.add(grid, 1, wxEXPAND or wxALL, 5)
  page3.sizer = page3Sizer
  discard notebook.addPage(page3, "Data & Grid")

  # Page 4: Container Widgets
  let page4 = newPanel(notebook)
  let page4Sizer = newBoxSizer(orientVertical)
  let cp = newCollapsiblePane(page4, "Expand for more")
  let cpPane = cp.pane
  let cpSizer = newBoxSizer(orientVertical)
  cpSizer.add(newStaticText(cpPane, "Inside CollapsiblePane"), 0, wxALL, 5)
  cpPane.sizer = cpSizer
  page4Sizer.add(cp, 0, wxALL or wxEXPAND, 5)
  page4.sizer = page4Sizer
  discard notebook.addPage(page4, "Containers")

  mainPanel.sizer = mainSizer

  btn.bind(evt_BUTTON, proc(e: Event) =
    let dlg = newTextEntryDialog(frame, "Enter your name:", "Question")
    if dlg.showModal() == int(wxID_OK):
      echo "Hello, ", dlg.value
  )

  frame.show()
  app.mainLoop()

main()
