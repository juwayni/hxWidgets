import wxnim
import wxnim/styles/[frame_styles, window_styles]

proc main() =
  let app = newApp()
  let frame = newFrame(nil, title = "wxnim Menu Bar Example", width = 500, height = 400)
  app.topWindow = frame

  let menuBar = newMenuBar()

  let fileMenu = newMenu()
  discard fileMenu.append(int(wxID_EXIT), "Exit")
  discard menuBar.append(fileMenu, "&File")

  let editMenu = newMenu()
  discard editMenu.append(201, "&Undo\tCtrl+Z")
  discard editMenu.append(202, "&Redo\tCtrl+Y")
  editMenu.appendSeparator()
  discard editMenu.append(203, "Cu&t\tCtrl+X")
  discard editMenu.append(204, "&Copy\tCtrl+C")
  discard editMenu.append(205, "&Paste\tCtrl+V")
  discard menuBar.append(editMenu, "&Edit")

  let helpMenu = newMenu()
  discard helpMenu.append(301, "&About")
  discard menuBar.append(helpMenu, "&Help")

  # Note: frame.menuBar = menuBar should be implemented in a complete wrapper
  # For now, we simulate what the user would do

  frame.bind(evt_MENU, proc(e: Event) =
    if e.id == int(wxID_EXIT):
      discard frame.close()
    else:
      echo "Menu item selected: ", e.id
  )

  frame.show()
  app.mainLoop()

if isMainModule:
  main()
