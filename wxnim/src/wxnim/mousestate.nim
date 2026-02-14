import common_types, object
import ../wxraw/types

proc getX*(self: ptr WxObjectRaw): cint {.importcpp: "((wxMouseState*)#)->GetX()", header: "wx/mousestate.h".}
proc getY*(self: ptr WxObjectRaw): cint {.importcpp: "((wxMouseState*)#)->GetY()", header: "wx/mousestate.h".}
proc leftIsDown*(self: ptr WxObjectRaw): bool {.importcpp: "((wxMouseState*)#)->LeftIsDown()", header: "wx/mousestate.h".}
proc middleIsDown*(self: ptr WxObjectRaw): bool {.importcpp: "((wxMouseState*)#)->MiddleIsDown()", header: "wx/mousestate.h".}
proc rightIsDown*(self: ptr WxObjectRaw): bool {.importcpp: "((wxMouseState*)#)->RightIsDown()", header: "wx/mousestate.h".}

type
  MouseState* = ref object of Object

proc x*(self: MouseState): int = int(self.rawObj.getX())
proc y*(self: MouseState): int = int(self.rawObj.getY())
proc leftDown*(self: MouseState): bool = self.rawObj.leftIsDown()
proc middleDown*(self: MouseState): bool = self.rawObj.middleIsDown()
proc rightDown*(self: MouseState): bool = self.rawObj.rightIsDown()
