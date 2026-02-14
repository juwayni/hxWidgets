import wxnim, view, log_view
import wxnim/styles/[window_styles, listctrl_styles]

type
  ListsView* = ref object of View

proc newListsView*(parent: Window): ListsView =
  let v = newPanel(parent)
  let sizer = newBoxSizer(wxVERTICAL)

  let list = newListCtrl(v, style = lcReport)
  discard list.insertColumn(0, "Col 1")
  discard list.insertColumn(1, "Col 2")
  discard list.insertItem(0, "Item 1")
  discard list.setItem(0, 1, "Value 1")

  sizer.add(list, 1, wxEXPAND or wxALL, 5)
  v.sizer = sizer
  return cast[ListsView](v)
