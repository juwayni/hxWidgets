import wxnim, view, log_view
import wxnim/styles/[window_styles]

type
  EventsView* = ref object of View

proc newEventsView*(parent: Window): EventsView =
  let v = newPanel(parent)
  let sizer = newBoxSizer(wxVERTICAL)

  let btn = newButton(v, "Test Events")
  btn.bind(evt_BUTTON, proc(e: Event) = log("Button event in EventsView"))
  sizer.add(btn, 0, wxALL, 10)

  v.sizer = sizer
  return cast[EventsView](v)
