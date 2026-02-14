import common_types, gdi, object, dc
import ../wxraw/types
import ../wxraw/gdi_raw

type
  GraphicsPath* = ref object of Object

proc finalizeGraphicsPath(self: GraphicsPath) =
  if self.rawObj != nil: discard # managed

proc newGraphicsPath*(context: GraphicsContext): GraphicsPath =
  let raw = cast[ptr GraphicsContextRaw](context.rawObj).createPath()
  new(result, finalizeGraphicsPath); result.rawObj = cast[ptr WxObjectRaw](raw)

proc moveToPoint*(self: GraphicsPath, x, y: float) = cast[ptr GraphicsPathRaw](self.rawObj).moveToPoint(x.cdouble, y.cdouble)
proc addLineToPoint*(self: GraphicsPath, x, y: float) = cast[ptr GraphicsPathRaw](self.rawObj).addLineToPoint(x.cdouble, y.cdouble)
proc addRectangle*(self: GraphicsPath, x, y, w, h: float) = cast[ptr GraphicsPathRaw](self.rawObj).addRectangle(x.cdouble, y.cdouble, w.cdouble, h.cdouble)
proc closeSubpath*(self: GraphicsPath) = cast[ptr GraphicsPathRaw](self.rawObj).closeSubpath()

proc strokePath*(self: GraphicsContext, path: GraphicsPath) = cast[ptr GraphicsContextRaw](self.rawObj).strokePath(cast[ptr GraphicsPathRaw](path.rawObj))
proc fillPath*(self: GraphicsContext, path: GraphicsPath) = cast[ptr GraphicsContextRaw](self.rawObj).fillPath(cast[ptr GraphicsPathRaw](path.rawObj))
