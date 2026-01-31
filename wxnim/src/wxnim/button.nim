import window, common_types, evthandler, utils, gdi
import ../wxraw/types
import ../wxraw/button_raw

type
  Button* = ref object of AnyButton

proc rawButton*(self: Button): ptr ButtonRaw = cast[ptr ButtonRaw](self.rawObj)

proc newButton*(parent: Window, label: string = "", id: int = -1, x, y, width, height: int = -1, style: clong = 0): Button =
  let rawParent = parent.rawWindow
  let rawLabel = constructWxString(label.cstring)
  let pos = PointRaw(x: x.cint, y: y.cint)
  let size = SizeRaw(x: width.cint, y: height.cint)

  let raw = newButtonRaw(rawParent, id.cint, rawLabel, pos, size, style)
  result = Button(rawObj: cast[ptr WxObjectRaw](raw)); result.initEvtHandler()

proc `bitmap=`*(self: Button, bitmap: Bitmap) =
  cast[ptr AnyButtonRaw](self.rawObj).setBitmap(cast[ptr BitmapRaw](bitmap.rawObj))

proc `bitmapPosition=`*(self: Button, dir: int) =
  cast[ptr AnyButtonRaw](self.rawObj).setBitmapPosition(dir.cint)
