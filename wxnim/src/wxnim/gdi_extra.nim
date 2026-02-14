import common_types, gdi, object
import ../wxraw/types
import ../wxraw/gdi_extra_raw

type
  GraphicsPath* = ref object of Object

proc finalizeGraphicsPath(self: GraphicsPath) =
  if self.rawObj != nil: discard # GraphicsPath is often managed by GraphicsContext

proc newGraphicsPath*(): GraphicsPath =
  let raw = newGraphicsPathRaw()
  new(result, finalizeGraphicsPath); result.rawObj = cast[ptr WxObjectRaw](raw)

proc moveToPoint*(self: GraphicsPath, x, y: float) = cast[ptr GraphicsObjectRaw](self.rawObj).moveToPoint(x, y)
proc addLineToPoint*(self: GraphicsPath, x, y: float) = cast[ptr GraphicsObjectRaw](self.rawObj).addLineToPoint(x, y)

type
  GCDC* = ref object of DC

proc newGCDC*(dc: WindowDC): GCDC =
  let raw = newGDCFromDCRaw(cast[ptr WindowDCRaw](dc.rawObj))
  new(result, finalizeDC); result.rawObj = cast[ptr WxObjectRaw](raw)
