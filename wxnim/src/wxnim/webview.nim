import window, common_types, evthandler, utils
import ../wxraw/types
import ../wxraw/advanced_widgets_raw

type
  WebView* = ref object of Control

proc newWebView*(parent: Window, url: string = "", id: int = -1, x, y, width, height: int = -1, style: clong = 0): WebView =
  let raw = newWebViewRaw(parent.rawWindow, id.cint, constructWxString(url.cstring), PointRaw(x: x.cint, y: y.cint), SizeRaw(x: width.cint, y: height.cint), style)
  result = WebView(rawObj: cast[ptr WxObjectRaw](raw)); result.initEvtHandler()

proc loadURL*(self: WebView, url: string) =
  cast[ptr WebViewRaw](self.rawObj).loadURL(constructWxString(url.cstring))
