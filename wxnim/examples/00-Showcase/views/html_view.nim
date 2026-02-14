import wxnim, view, webview
import wxnim/styles/[window_styles]

type
  HTMLView* = ref object of View

proc newHTMLView*(parent: Window): HTMLView =
  let v = newPanel(parent)
  let sizer = newBoxSizer(wxVERTICAL)

  let web = newWebView(v, "https://www.google.com")
  sizer.add(web, 1, wxEXPAND or wxALL, 5)

  v.sizer = sizer
  return cast[HTMLView](v)
