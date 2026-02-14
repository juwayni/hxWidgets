import wxnim
import wxnim/styles/[frame_styles, window_styles, notebook_styles]

proc main() =
  let app = newApp()
  let frame = newFrame(nil, title = "wxnim Notebook Example", width = 500, height = 400)

  let panel = newPanel(frame)
  let mainSizer = newBoxSizer(wxVERTICAL)

  let notebook = newNotebook(panel, style = nbDefault)

  let page1 = newPanel(notebook)
  let page1Sizer = newBoxSizer(wxVERTICAL)
  page1Sizer.add(newStaticText(page1, "This is the first page"), 0, wxALL, 20)
  page1Sizer.add(newButton(page1, "Action 1"), 0, wxALL, 5)
  page1.sizer = page1Sizer
  discard notebook.addPage(page1, "Page 1")

  let page2 = newPanel(notebook)
  let page2Sizer = newBoxSizer(wxVERTICAL)
  page2Sizer.add(newStaticText(page2, "This is the second page"), 0, wxALL, 20)
  page2Sizer.add(newTextCtrl(page2, "Type here..."), 0, wxEXPAND or wxALL, 5)
  page2.sizer = page2Sizer
  discard notebook.addPage(page2, "Page 2")

  mainSizer.add(notebook, 1, wxEXPAND or wxALL, 10)
  panel.sizer = mainSizer

  frame.show()
  app.mainLoop()

if isMainModule:
  main()
