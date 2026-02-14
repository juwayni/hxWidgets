import wxnim, view, log_view
import wxnim/styles/[window_styles]

type
  DrawingView* = ref object of View

proc newDrawingView*(parent: Window): DrawingView =
  let v = newPanel(parent)

  v.bind(evt_PAINT, proc(e: Event) =
    let dc = newPaintDC(v)
    dc.setPen(newPen(newColour(0, 0, 255), 2))
    dc.drawLine(10, 10, 200, 100)
    dc.setBrush(newBrush(newColour(255, 0, 0, 100)))
    dc.drawRectangle(50, 50, 100, 80)
  )

  return cast[DrawingView](v)
