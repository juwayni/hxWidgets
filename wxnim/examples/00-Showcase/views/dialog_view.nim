import wxnim, view, log_view
import wxnim/styles/[window_styles, dialog_styles]

type
  DialogView* = ref object of View

proc newDialogView*(parent: Window): DialogView =
  let v = newPanel(parent)
  let sizer = newBoxSizer(wxVERTICAL)

  let btn = newButton(v, "Show Message Dialog")
  btn.bind(evt_BUTTON, proc(e: Event) =
    let dlg = newMessageDialog(v, "This is a message", "Dialog View", mbOk)
    discard dlg.showModal()
  )
  sizer.add(btn, 0, wxALL, 10)

  v.sizer = sizer
  return cast[DialogView](v)
