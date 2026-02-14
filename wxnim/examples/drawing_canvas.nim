import wxnim
import wxnim/styles/[frame_styles, window_styles]

proc main() =
  let app = newApp()
  let frame = newFrame(nil, title = "wxnim Drawing Canvas", width = 600, height = 400)

  let panel = newPanel(frame)

  panel.bind(evt_PAINT, proc(e: Event) =
    let dc = newPaintDC(panel)

    # Draw background
    dc.setBrush(newBrush(newColour(240, 240, 240)))
    dc.drawRectangle(0, 0, 600, 400)

    # Draw a line
    dc.setPen(newPen(newColour(255, 0, 0), 2))
    dc.drawLine(10, 10, 100, 100)

    # Draw a rectangle
    dc.setPen(newPen(newColour(0, 0, 255), 1))
    dc.setBrush(newBrush(newColour(0, 255, 0, 128))) # Semi-transparent green
    dc.drawRectangle(150, 50, 100, 80)

    # Draw text
    dc.setFont(newFont(12, fontFamilySwiss, fontStyleNormal, fontWeightBold))
    dc.drawText("Hello from wxnim DC!", 50, 200)

    # Draw using GraphicsContext
    let gc = newGraphicsContext(panel)
    if not gc.isNull:
      gc.setPen(newPen(newColour(0, 0, 0), 3))
      gc.setBrush(newBrush(newColour(255, 255, 0)))

      let path = gc.newGraphicsPath()
      path.moveToPoint(300, 200)
      path.addLineToPoint(400, 250)
      path.addLineToPoint(350, 350)
      path.closeSubpath()

      gc.fillPath(path)
      gc.strokePath(path)
  )

  frame.show()
  app.mainLoop()

if isMainModule:
  main()
