import wxnim
import wxnim/styles/[frame_styles, button_styles, window_styles, textctrl_styles, listctrl_styles, treectrl_styles, dialog_styles, calendarctrl_styles, hyperlinkctrl_styles, notebook_styles, grid_styles, defs]
import wxnim/[textctrl, menu, dialog, controls, gdi, treectrl, listctrl, grid, webview, notebook, system, calendarctrl, hyperlinkctrl, dataviewctrl, propertygrid, gdi_extra, process]
import wxnim/sizers/[boxsizer, gridsizer, sizer]

proc main() =
  let app = newApp()

  let frame = newFrame(nil, title = "wxnim Exhaustive Kitchen Sink", width = 1200, height = 900)
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

  # Page 1: Basic & Extra Controls
  let page1 = newPanel(notebook)
  let page1Sizer = newBoxSizer(orientVertical)
  let btn = newButton(page1, "Click for Dialog")
  page1Sizer.add(btn, 0, wxALL, 5)
  let link = newHyperlinkCtrl(page1, "wxnim Project", "https://github.com/example/wxnim")
  page1Sizer.add(link, 0, wxALL, 5)
  let gauge = newGauge(page1, range = 100)
  gauge.value = 50
  page1Sizer.add(gauge, 0, wxEXPAND or wxALL, 5)
  page1.sizer = page1Sizer
  discard notebook.addPage(page1, "Standard")

  # Page 2: Lists & Trees
  let page2 = newPanel(notebook)
  let page2Sizer = newBoxSizer(orientHorizontal)
  let list = newListCtrl(page2, style = lcReport)
  discard list.insertColumn(0, "Feature")
  discard list.insertColumn(1, "Status")
  discard list.insertItem(0, "Bindings")
  discard list.setItem(0, 1, "Complete")
  page2Sizer.add(list, 1, wxEXPAND or wxALL, 5)
  let tree = newTreeCtrl(page2)
  let root = tree.addRoot("wxnim Project")
  discard tree.appendItem(root, "Core")
  discard tree.appendItem(root, "GDI")
  discard tree.appendItem(root, "Advanced")
  page2Sizer.add(tree, 1, wxEXPAND or wxALL, 5)
  page2.sizer = page2Sizer
  discard notebook.addPage(page2, "Containers")

  # Page 3: Complex Widgets
  let page3 = newPanel(notebook)
  let page3Sizer = newBoxSizer(orientVertical)
  let cal = newCalendarCtrl(page3)
  page3Sizer.add(cal, 0, wxALL or alignCenter, 5)
  let grid = newGrid(page3)
  discard grid.createGrid(10, 10)
  page3Sizer.add(grid, 1, wxEXPAND or wxALL, 5)
  page3.sizer = page3Sizer
  discard notebook.addPage(page3, "Data & Grid")

  # Page 4: Graphics
  let page4 = newPanel(notebook)
  page4.bind(evt_PAINT, proc(e: Event) =
    let dc = newPaintDC(page4)
    dc.setPen(newPen(newColour(255, 0, 0), 2))
    dc.drawLine(0, 0, 100, 100)
    dc.drawRectangle(10, 10, 50, 50)
  )
  discard notebook.addPage(page4, "Graphics/GDI")

  mainPanel.sizer = mainSizer

  btn.bind(evt_BUTTON, proc(e: Event) =
    let dlg = newTextEntryDialog(frame, "Enter your name:", "Question")
    if dlg.showModal() == int(wxID_OK):
      echo "Hello, ", dlg.value
  )

  frame.show()
  app.mainLoop()

main()
