import wxnim
import wxnim/styles/[frame_styles, window_styles, advanced_styles, listctrl_styles, treectrl_styles]

proc main() =
  let app = newApp()
  let frame = newFrame(nil, title = "wxnim List and Tree", width = 800, height = 600)

  let panel = newPanel(frame)
  let mainSizer = newBoxSizer(wxHORIZONTAL)

  # ListCtrl
  let list = newListCtrl(panel, style = lcReport)
  discard list.insertColumn(0, "Feature")
  discard list.insertColumn(1, "Status")
  discard list.insertColumn(2, "Notes")

  discard list.insertItem(0, "FFI")
  discard list.setItem(0, 1, "Done")
  discard list.setItem(0, 2, "Uses importcpp")

  discard list.insertItem(1, "API")
  discard list.setItem(1, 1, "Idiomatic")
  discard list.setItem(1, 2, "ref objects")

  mainSizer.add(list, 1, wxEXPAND or wxALL, 10)

  # TreeCtrl
  let tree = newTreeCtrl(panel)
  let root = tree.addRoot("wxnim")

  let core = tree.appendItem(root, "Core")
  discard tree.appendItem(core, "App")
  discard tree.appendItem(core, "Frame")
  discard tree.appendItem(core, "Panel")

  let gdi = tree.appendItem(root, "GDI")
  discard tree.appendItem(gdi, "DC")
  discard tree.appendItem(gdi, "GraphicsContext")
  discard tree.appendItem(gdi, "Pen/Brush")

  let advanced = tree.appendItem(root, "Advanced")
  discard tree.appendItem(advanced, "Grid")
  discard tree.appendItem(advanced, "WebView")
  discard tree.appendItem(advanced, "STC")

  tree.expand(root)
  tree.expand(core)

  mainSizer.add(tree, 1, wxEXPAND or wxALL, 10)

  panel.sizer = mainSizer
  frame.show()
  app.mainLoop()

if isMainModule:
  main()
