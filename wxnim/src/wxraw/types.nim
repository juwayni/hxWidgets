type
  WxObjectRaw* {.importcpp: "wxObject", header: "wx/object.h", pure.} = object
  EvtHandlerRaw* {.importcpp: "wxEvtHandler", header: "wx/event.h", pure.} = object of WxObjectRaw
  WindowRaw* {.importcpp: "wxWindow", header: "wx/window.h", pure.} = object of EvtHandlerRaw
  ControlRaw* {.importcpp: "wxControl", header: "wx/control.h", pure.} = object of WindowRaw

  AppRaw* {.importcpp: "wxApp", header: "wx/app.h", pure.} = object of EvtHandlerRaw
  FrameRaw* {.importcpp: "wxFrame", header: "wx/frame.h", pure.} = object of WindowRaw
  PanelRaw* {.importcpp: "wxPanel", header: "wx/panel.h", pure.} = object of WindowRaw
  ScrolledWindowRaw* {.importcpp: "wxScrolledWindow", header: "wx/scrolwin.h", pure.} = object of WindowRaw

  ButtonRaw* {.importcpp: "wxButton", header: "wx/button.h", pure.} = object of ControlRaw
  TextCtrlRaw* {.importcpp: "wxTextCtrl", header: "wx/textctrl.h", pure.} = object of ControlRaw
  StaticTextRaw* {.importcpp: "wxStaticText", header: "wx/stattext.h", pure.} = object of ControlRaw
  CheckBoxRaw* {.importcpp: "wxCheckBox", header: "wx/checkbox.h", pure.} = object of ControlRaw
  RadioButtonRaw* {.importcpp: "wxRadioButton", header: "wx/radiobut.h", pure.} = object of ControlRaw
  ComboBoxRaw* {.importcpp: "wxComboBox", header: "wx/combobox.h", pure.} = object of ControlRaw
  ListBoxRaw* {.importcpp: "wxListBox", header: "wx/listbox.h", pure.} = object of ControlRaw

  SizerRaw* {.importcpp: "wxSizer", header: "wx/sizer.h", pure.} = object of WxObjectRaw
  BoxSizerRaw* {.importcpp: "wxBoxSizer", header: "wx/sizer.h", pure.} = object of SizerRaw
  StaticBoxSizerRaw* {.importcpp: "wxStaticBoxSizer", header: "wx/sizer.h", pure.} = object of BoxSizerRaw
  GridSizerRaw* {.importcpp: "wxGridSizer", header: "wx/sizer.h", pure.} = object of SizerRaw
  FlexGridSizerRaw* {.importcpp: "wxFlexGridSizer", header: "wx/sizer.h", pure.} = object of GridSizerRaw

  MenuBarRaw* {.importcpp: "wxMenuBar", header: "wx/menu.h", pure.} = object of WindowRaw
  MenuRaw* {.importcpp: "wxMenu", header: "wx/menu.h", pure.} = object of EvtHandlerRaw
  MenuItemRaw* {.importcpp: "wxMenuItem", header: "wx/menuitem.h", pure.} = object of WxObjectRaw

  DialogRaw* {.importcpp: "wxDialog", header: "wx/dialog.h", pure.} = object of WindowRaw
  MessageDialogRaw* {.importcpp: "wxMessageDialog", header: "wx/msgdlg.h", pure.} = object of DialogRaw
  FileDialogRaw* {.importcpp: "wxFileDialog", header: "wx/filedlg.h", pure.} = object of DialogRaw

  # Advanced Widgets
  NotebookRaw* {.importcpp: "wxNotebook", header: "wx/notebook.h", pure.} = object of WindowRaw
  ListCtrlRaw* {.importcpp: "wxListCtrl", header: "wx/listctrl.h", pure.} = object of ControlRaw
  TreeCtrlRaw* {.importcpp: "wxTreeCtrl", header: "wx/treectrl.h", pure.} = object of ControlRaw
  ListItemRaw* {.importcpp: "wxListItem", header: "wx/listctrl.h", pure.} = object of WxObjectRaw
  TreeItemIdRaw* {.importcpp: "wxTreeItemId", header: "wx/treebase.h", pure.} = object

  # System & Utilities
  TimerRaw* {.importcpp: "wxTimer", header: "wx/timer.h", pure.} = object of EvtHandlerRaw
  ConfigRaw* {.importcpp: "wxConfig", header: "wx/config.h", pure.} = object of WxObjectRaw

  DCRaw* {.importcpp: "wxDC", header: "wx/dc.h", pure.} = object of WxObjectRaw
  PaintDCRaw* {.importcpp: "wxPaintDC", header: "wx/dcclient.h", pure.} = object of DCRaw
  ClientDCRaw* {.importcpp: "wxClientDC", header: "wx/dcclient.h", pure.} = object of DCRaw

  # GDI Types
  ColourRaw* {.importcpp: "wxColour", header: "wx/colour.h", pure.} = object of WxObjectRaw
  FontRaw* {.importcpp: "wxFont", header: "wx/font.h", pure.} = object of WxObjectRaw
  PenRaw* {.importcpp: "wxPen", header: "wx/pen.h", pure.} = object of WxObjectRaw
  BrushRaw* {.importcpp: "wxBrush", header: "wx/brush.h", pure.} = object of WxObjectRaw

  BitmapRaw* {.importcpp: "wxBitmap", header: "wx/bitmap.h", pure.} = object of WxObjectRaw
  IconRaw* {.importcpp: "wxIcon", header: "wx/icon.h", pure.} = object of WxObjectRaw
  ImageRaw* {.importcpp: "wxImage", header: "wx/image.h", pure.} = object of WxObjectRaw

  PointRaw* {.importcpp: "wxPoint", header: "wx/gdicmn.h".} = object
    x*, y*: cint
  SizeRaw* {.importcpp: "wxSize", header: "wx/gdicmn.h".} = object
    x*, y*: cint
  WxStringRaw* {.importcpp: "wxString", header: "wx/string.h".} = object

proc constructWxString*(s: cstring): WxStringRaw {.importcpp: "wxString::FromUTF8(@)", header: "wx/string.h".}
proc toUtf8*(s: WxStringRaw): cstring {.importcpp: "#.ToUTF8().data()", header: "wx/string.h".}
