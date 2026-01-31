import ../wxraw/types

type
  Object* = ref object of RootObj
    rawObj*: ptr WxObjectRaw

  EvtHandler* = ref object of Object

  Window* = ref object of EvtHandler

  Control* = ref object of Window

  Sizer* = ref object of Object
