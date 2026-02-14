import common_types, evthandler
import ../wxraw/types
import ../wxraw/menu_raw

type
  MenuItem* = ref object of Object

  Menu* = ref object of EvtHandler

  MenuBar* = ref object of Window

proc rawMenuBar*(self: MenuBar): ptr MenuBarRaw =
  cast[ptr MenuBarRaw](self.rawObj)

proc newMenuBar*(style: clong = 0): MenuBar =
  let raw = newMenuBarRaw(style)
  result = MenuBar(rawObj: cast[ptr WxObjectRaw](raw))
  result.initEvtHandler()

proc append*(self: MenuBar, menu: Menu, title: string): bool =
  self.rawMenuBar.append(cast[ptr MenuRaw](menu.rawObj), constructWxString(title.cstring))

proc newMenu*(title: string = ""): Menu =
  let raw = newMenuRaw(constructWxString(title.cstring))
  result = Menu(rawObj: cast[ptr WxObjectRaw](raw))
  result.initEvtHandler()

proc append*(self: Menu, id: int, item: string, help: string = "", kind: int = 0): MenuItem =
  let raw = cast[ptr MenuRaw](self.rawEvtHandler()).append(id.cint, constructWxString(item.cstring), constructWxString(help.cstring), kind.cint)
  result = MenuItem(rawObj: cast[ptr WxObjectRaw](raw))

proc appendSeparator*(self: Menu) =
  cast[ptr MenuRaw](self.rawObj).appendSeparator()
