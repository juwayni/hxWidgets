import window
import ../wxraw/types
import ../wxraw/button_raw

type
  Button* = ref object of Window

proc rawButton*(self: Button): ptr ButtonRaw =
  cast[ptr ButtonRaw](self.rawObj)

proc newButton*(parent: Window, label: string = "", id: int = -1,
                x: int = -1, y: int = -1, width: int = -1, height: int = -1,
                style: clong = 0): Button =
  let rawParent = parent.rawWindow
  let rawLabel = constructWxString(label.cstring)
  let pos = PointRaw(x: x.cint, y: y.cint)
  let size = SizeRaw(x: width.cint, y: height.cint)

  let raw = newButtonRaw(rawParent, id.cint, rawLabel, pos, size, style)
  result = Button(rawObj: cast[ptr WxObjectRaw](raw))
