import window, common_types, evthandler
import ../wxraw/types

proc newGLCanvasRaw*(parent: ptr WindowRaw, id: cint, pos: PointRaw, size: SizeRaw, style: clong): ptr WxObjectRaw {.importcpp: "new wxGLCanvas(@)", header: "wx/glcanvas.h".}
proc newGLContextRaw*(canvas: ptr WxObjectRaw): ptr WxObjectRaw {.importcpp: "new wxGLContext(@)", header: "wx/glcanvas.h".}
proc setCurrent*(self: ptr WxObjectRaw, context: ptr WxObjectRaw): bool {.importcpp: "((wxGLCanvas*)#)->SetCurrent(*((wxGLContext*)#))", header: "wx/glcanvas.h".}

type
  GLCanvas* = ref object of Control
  GLContext* = ref object of Object

proc finalizeGLContext(self: GLContext) =
  if self.rawObj != nil: discard # delete raw

proc newGLCanvas*(parent: Window, id: int = -1, x, y, width, height: int = -1, style: clong = 0): GLCanvas =
  let raw = newGLCanvasRaw(parent.rawWindow, id.cint, PointRaw(x: x.cint, y: y.cint), SizeRaw(x: width.cint, y: height.cint), style)
  result = GLCanvas(rawObj: cast[ptr WxObjectRaw](raw)); result.initEvtHandler()

proc newGLContext*(canvas: GLCanvas): GLContext =
  let raw = newGLContextRaw(canvas.rawObj)
  new(result, finalizeGLContext); result.rawObj = raw

proc setCurrent*(self: GLCanvas, context: GLContext): bool =
  cast[ptr WxObjectRaw](self.rawObj).setCurrent(context.rawObj)
