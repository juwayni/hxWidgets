import wxnim
import wxnim/styles/[frame_styles, window_styles, notebook_styles, dialog_styles]
import views/[basic_controls_view, dialog_view, drawing_view, events_view, html_view, lists_view, log_view, system_info_view]

proc buildMenu(): MenuBar =
  let menuBar = newMenuBar()
  let file = newMenu()
  discard file.append(1000, "Exit")
  discard menuBar.append(file, "File")

  let menu = newMenu()
  # In a full implementation, MenuItem would be handled more cleanly
  discard menu.append(1001, "Something")

  let subMenu = newMenu()
  discard subMenu.append(1002, "Item 1")
  discard subMenu.append(1003, "Item 2")
  subMenu.appendSeparator()
  # ... append check/radio items ...

  discard menu.append(1004, "Sub Menu") # Simplified sub-menu representation

  discard menuBar.append(menu, "Test Menu")
  return menuBar

proc main() =
  let app = newApp()

  let frame = newFrame(nil, title = "wxnim Showcase", width = 800, height = 600)
  app.topWindow = frame

  let taskBarIcon = newTaskBarIcon()
  # taskBarIcon.setBitmap(...)

  frame.sizer = newBoxSizer(wxVERTICAL)

  let imageList = newImageList(16, 16)
  # imageList.add(...)

  let tabs = newNotebook(frame)
  # tabs.imageList = imageList

  frame.sizer.add(tabs, 3, wxEXPAND or wxALL, 10)

  let controlsView = newBasicControlsView(tabs)
  discard tabs.addPage(controlsView, "Basic Controls", false)

  let drawingView = newDrawingView(tabs)
  discard tabs.addPage(drawingView, "Drawing", false)

  let listsView = newListsView(tabs)
  discard tabs.addPage(listsView, "Lists", false)

  let infoView = newSystemInfoView(tabs)
  discard tabs.addPage(infoView, "System Info", false)

  let dialogView = newDialogView(tabs)
  discard tabs.addPage(dialogView, "Dialogs", false)

  let htmlView = newHTMLView(tabs)
  discard tabs.addPage(htmlView, "Web View", false)

  let eventsView = newEventsView(tabs)
  discard tabs.addPage(eventsView, "Events", false)

  let log = newLogView(frame)
  frame.sizer.addSpacer(5)
  frame.sizer.add(log, 1, wxEXPAND or wxALL)

  frame.layout()
  frame.show()

  app.mainLoop()

if isMainModule:
  main()
