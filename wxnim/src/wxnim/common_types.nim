import tables
import ../wxraw/types

type
  EventHandlerClosure* = proc(e: RootRef)

  Object* = ref object of RootObj
    rawObj*: ptr WxObjectRaw

  EvtHandler* = ref object of Object
    handlers*: Table[cint, seq[EventHandlerClosure]]

  Window* = ref object of EvtHandler

  NonOwnedWindow* = ref object of Window

  TopLevelWindow* = ref object of NonOwnedWindow

  Control* = ref object of Window

  AnyButton* = ref object of Control

  Sizer* = ref object of Object
