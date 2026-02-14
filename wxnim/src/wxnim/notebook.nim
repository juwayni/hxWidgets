import window, common_types, evthandler, utils
import ../wxraw/types
import ../wxraw/advanced_widgets_raw

type
  Notebook* = ref object of Window

proc newNotebook*(parent: Window, id: int = -1, x: int = -1, y: int = -1, width: int = -1, height: int = -1, style: clong = 0): Notebook =
  let raw = newNotebookRaw(parent.rawWindow, id.cint, PointRaw(x: x.cint, y: y.cint), SizeRaw(x: width.cint, y: height.cint), style)
  result = Notebook(rawObj: cast[ptr WxObjectRaw](raw))
  result.initEvtHandler()

proc addPage*(self: Notebook, page: Window, text: string, select: bool = false, imageId: int = -1): bool =
  cast[ptr NotebookRaw](self.rawObj).addPage(page.rawWindow, constructWxString(text.cstring), select, imageId.cint)
