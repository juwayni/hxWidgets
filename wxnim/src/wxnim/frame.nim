import window
import ../wxraw/types
import ../wxraw/frame_raw

type
  Frame* = ref object of Window

proc rawFrame*(self: Frame): ptr FrameRaw =
  cast[ptr FrameRaw](self.rawObj)

proc newFrame*(parent: Window = nil, id: int = -1, title: string = "",
               x: int = -1, y: int = -1, width: int = -1, height: int = -1,
               style: clong = 0): Frame =
  let rawParent = if parent.isNull: nil else: parent.rawWindow
  let rawTitle = constructWxString(title.cstring)
  let pos = PointRaw(x: x.cint, y: y.cint)
  let size = SizeRaw(x: width.cint, y: height.cint)

  let raw = newFrameRaw(rawParent, id.cint, rawTitle, pos, size, style)
  result = Frame(rawObj: cast[ptr WxObjectRaw](raw))
  result.initEvtHandler()
