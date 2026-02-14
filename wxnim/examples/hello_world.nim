import wxnim
import wxnim/styles/frame_styles

proc main() =
  let app = newApp()
  let frame = newFrame(nil, title = "wxnim Hello World", width = 300, height = 200)
  frame.show()
  app.mainLoop()

if isMainModule:
  main()
