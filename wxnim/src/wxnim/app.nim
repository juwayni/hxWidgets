import os
import common_types, evthandler, window
import ../wxraw/types
import ../wxraw/app_raw

type
  App* = ref object of EvtHandler
    ## The App class represents the application itself.
    ## It manages the main event loop and application-level initialization.

proc rawApp*(self: App): ptr AppRaw =
  ## Returns the underlying raw wxApp pointer.
  cast[ptr AppRaw](self.rawObj)

var currentApp: App

proc newApp*(): App =
  ## Creates and initializes a new wxnim application.
  let raw = newAppRaw()
  result = App(rawObj: cast[ptr WxObjectRaw](raw))
  result.initEvtHandler()
  currentApp = result
  setInstance(raw)

proc init*(self: App): bool =
  ## In a real app, this would be overridden or handled by a callback.
  self.rawApp.onInit()

proc run*(self: App) =
  ## Starts the application's event loop.
  self.rawApp.onRun()

proc exit*(self: App): int =
  ## Exits the application.
  int(self.rawApp.onExit())

proc `topWindow=`*(self: App, win: Window) =
  self.rawApp.setTopWindow(win.rawWindow)

proc mainLoop*(self: App) =
  ## Main entry point that handles wxWidgets initialization.
  var argc = (os.paramCount() + 1).cint
  var args: seq[cstring] = @[]
  args.add(os.getAppFilename().cstring)
  for i in 1..os.paramCount():
    args.add(os.paramStr(i).cstring)

  var argv = cast[ptr cstring](addr args[0])

  if wxEntryStart(argc, argv):
    wxInitAllImageHandlers()
    if self.init():
      self.run()
    discard self.exit()
    wxEntryCleanup()
