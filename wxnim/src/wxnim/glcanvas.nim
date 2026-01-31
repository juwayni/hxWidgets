import window, common_types, evthandler
import ../wxraw/types
import ../wxraw/advanced_widgets_raw

type
  GLCanvas* = ref object of Control
  GLContext* = ref object of Object

proc finalizeGLContext(self: GLContext) =
  if self.rawObj != nil: discard # delete raw

proc newGLCanvas*(parent: Window, id: int = -1, options: ptr cint = nil, x, y, width, height: int = -1, style: clong = 0): GLCanvas =
  let raw = newGLCanvasRaw(parent.rawWindow, id.cint, options, PointRaw(x: x.cint, y: y.cint), SizeRaw(x: width.cint, y: height.cint), style)
  result = GLCanvas(rawObj: cast[ptr WxObjectRaw](raw)); result.initEvtHandler()

proc newGLContext*(canvas: GLCanvas): GLContext =
  let raw = newGLContextRaw(cast[ptr GLCanvasRaw](canvas.rawObj))
  new(result, finalizeGLContext); result.rawObj = raw

proc setCurrent*(self: GLCanvas, context: GLContext): bool =
  cast[ptr GLCanvasRaw](self.rawObj).setCurrent(context.rawObj)
