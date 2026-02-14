type
  WxObjectRaw* {.importcpp: "wxObject", header: "wx/object.h", pure.} = object
  EvtHandlerRaw* {.importcpp: "wxEvtHandler", header: "wx/event.h", pure.} = object of WxObjectRaw
  WindowRaw* {.importcpp: "wxWindow", header: "wx/window.h", pure.} = object of EvtHandlerRaw
  ControlRaw* {.importcpp: "wxControl", header: "wx/control.h", pure.} = object of WindowRaw
  AnyButtonRaw* {.importcpp: "wxAnyButton", header: "wx/anybutton.h", pure.} = object of ControlRaw
  NonOwnedWindowRaw* {.importcpp: "wxNonOwnedWindow", header: "wx/nonownedwnd.h", pure.} = object of WindowRaw
  TopLevelWindowRaw* {.importcpp: "wxTopLevelWindow", header: "wx/toplevel.h", pure.} = object of NonOwnedWindowRaw

  AppRaw* {.importcpp: "wxApp", header: "wx/app.h", pure.} = object of EvtHandlerRaw
  FrameRaw* {.importcpp: "wxFrame", header: "wx/frame.h", pure.} = object of TopLevelWindowRaw
  PanelRaw* {.importcpp: "wxPanel", header: "wx/panel.h", pure.} = object of WindowRaw
  ScrolledWindowRaw* {.importcpp: "wxScrolledWindow", header: "wx/scrolwin.h", pure.} = object of WindowRaw

  ButtonRaw* {.importcpp: "wxButton", header: "wx/button.h", pure.} = object of AnyButtonRaw
  CheckBoxRaw* {.importcpp: "wxCheckBox", header: "wx/checkbox.h", pure.} = object of ControlRaw
  ChoiceRaw* {.importcpp: "wxChoice", header: "wx/choice.h", pure.} = object of ControlRaw
  ComboBoxRaw* {.importcpp: "wxComboBox", header: "wx/combobox.h", pure.} = object of ControlRaw
  GaugeRaw* {.importcpp: "wxGauge", header: "wx/gauge.h", pure.} = object of ControlRaw
  ListBoxRaw* {.importcpp: "wxListBox", header: "wx/listbox.h", pure.} = object of ControlRaw
  RadioButtonRaw* {.importcpp: "wxRadioButton", header: "wx/radiobut.h", pure.} = object of ControlRaw
  ScrollBarRaw* {.importcpp: "wxScrollBar", header: "wx/scrolbar.h", pure.} = object of ControlRaw
  SliderRaw* {.importcpp: "wxSlider", header: "wx/slider.h", pure.} = object of ControlRaw
  SpinCtrlRaw* {.importcpp: "wxSpinCtrl", header: "wx/spinctrl.h", pure.} = object of ControlRaw
  StaticBitmapRaw* {.importcpp: "wxStaticBitmap", header: "wx/statbmp.h", pure.} = object of ControlRaw
  StaticBoxRaw* {.importcpp: "wxStaticBox", header: "wx/statbox.h", pure.} = object of ControlRaw
  StaticLineRaw* {.importcpp: "wxStaticLine", header: "wx/statline.h", pure.} = object of ControlRaw
  StaticTextRaw* {.importcpp: "wxStaticText", header: "wx/stattext.h", pure.} = object of ControlRaw
  TextCtrlRaw* {.importcpp: "wxTextCtrl", header: "wx/textctrl.h", pure.} = object of ControlRaw
  ToggleButtonRaw* {.importcpp: "wxToggleButton", header: "wx/tglbtn.h", pure.} = object of AnyButtonRaw

  SizerRaw* {.importcpp: "wxSizer", header: "wx/sizer.h", pure.} = object of WxObjectRaw
  BoxSizerRaw* {.importcpp: "wxBoxSizer", header: "wx/sizer.h", pure.} = object of SizerRaw
  StaticBoxSizerRaw* {.importcpp: "wxStaticBoxSizer", header: "wx/sizer.h", pure.} = object of BoxSizerRaw
  GridSizerRaw* {.importcpp: "wxGridSizer", header: "wx/sizer.h", pure.} = object of SizerRaw
  FlexGridSizerRaw* {.importcpp: "wxFlexGridSizer", header: "wx/sizer.h", pure.} = object of GridSizerRaw

  MenuBarRaw* {.importcpp: "wxMenuBar", header: "wx/menu.h", pure.} = object of WindowRaw
  MenuRaw* {.importcpp: "wxMenu", header: "wx/menu.h", pure.} = object of EvtHandlerRaw
  MenuItemRaw* {.importcpp: "wxMenuItem", header: "wx/menuitem.h", pure.} = object of WxObjectRaw

  DialogRaw* {.importcpp: "wxDialog", header: "wx/dialog.h", pure.} = object of TopLevelWindowRaw
  MessageDialogRaw* {.importcpp: "wxMessageDialog", header: "wx/msgdlg.h", pure.} = object of DialogRaw
  FileDialogRaw* {.importcpp: "wxFileDialog", header: "wx/filedlg.h", pure.} = object of DialogRaw
  DirDialogRaw* {.importcpp: "wxDirDialog", header: "wx/dirdlg.h", pure.} = object of DialogRaw
  FontDialogRaw* {.importcpp: "wxFontDialog", header: "wx/fontdlg.h", pure.} = object of DialogRaw
  ColourDialogRaw* {.importcpp: "wxColourDialog", header: "wx/colordlg.h", pure.} = object of DialogRaw

  # GDI
  GDIObjectRaw* {.importcpp: "wxGDIObject", header: "wx/gdiobj.h", pure.} = object of WxObjectRaw
  BitmapRaw* {.importcpp: "wxBitmap", header: "wx/bitmap.h", pure.} = object of GDIObjectRaw
  IconRaw* {.importcpp: "wxIcon", header: "wx/icon.h", pure.} = object of GDIObjectRaw
  CursorRaw* {.importcpp: "wxCursor", header: "wx/cursor.h", pure.} = object of GDIObjectRaw
  PenRaw* {.importcpp: "wxPen", header: "wx/pen.h", pure.} = object of GDIObjectRaw
  BrushRaw* {.importcpp: "wxBrush", header: "wx/brush.h", pure.} = object of GDIObjectRaw
  FontRaw* {.importcpp: "wxFont", header: "wx/font.h", pure.} = object of GDIObjectRaw
  ColourRaw* {.importcpp: "wxColour", header: "wx/colour.h", pure.} = object of WxObjectRaw
  ImageRaw* {.importcpp: "wxImage", header: "wx/image.h", pure.} = object of WxObjectRaw
  ImageListRaw* {.importcpp: "wxImageList", header: "wx/imaglist.h", pure.} = object of WxObjectRaw
  RegionRaw* {.importcpp: "wxRegion", header: "wx/region.h", pure.} = object of GDIObjectRaw
  BitmapBundleRaw* {.importcpp: "wxBitmapBundle", header: "wx/bmpbndl.h", pure.} = object

  DCRaw* {.importcpp: "wxDC", header: "wx/dc.h", pure.} = object of WxObjectRaw
  WindowDCRaw* {.importcpp: "wxWindowDC", header: "wx/dcclient.h", pure.} = object of DCRaw
  ClientDCRaw* {.importcpp: "wxClientDC", header: "wx/dcclient.h", pure.} = object of WindowDCRaw
  PaintDCRaw* {.importcpp: "wxPaintDC", header: "wx/dcclient.h", pure.} = object of WindowDCRaw
  MemoryDCRaw* {.importcpp: "wxMemoryDC", header: "wx/dcmemory.h", pure.} = object of WindowDCRaw
  GraphicsObjectRaw* {.importcpp: "wxGraphicsObject", header: "wx/graphics.h", pure.} = object of WxObjectRaw
  GraphicsContextRaw* {.importcpp: "wxGraphicsContext", header: "wx/graphics.h", pure.} = object of GraphicsObjectRaw

  # Advanced
  NotebookRaw* {.importcpp: "wxNotebook", header: "wx/notebook.h", pure.} = object of WindowRaw
  ListCtrlRaw* {.importcpp: "wxListCtrl", header: "wx/listctrl.h", pure.} = object of ControlRaw
  TreeCtrlRaw* {.importcpp: "wxTreeCtrl", header: "wx/treectrl.h", pure.} = object of ControlRaw
  GridRaw* {.importcpp: "wxGrid", header: "wx/grid/grid.h", pure.} = object of ScrolledWindowRaw
  WebViewRaw* {.importcpp: "wxWebView", header: "wx/webview.h", pure.} = object of ControlRaw
  StyledTextCtrlRaw* {.importcpp: "wxStyledTextCtrl", header: "wx/stc/stc.h", pure.} = object of ControlRaw
  DataViewCtrlRaw* {.importcpp: "wxDataViewCtrl", header: "wx/dataview.h", pure.} = object of ControlRaw
  DataViewListCtrlRaw* {.importcpp: "wxDataViewListCtrl", header: "wx/dataview.h", pure.} = object of DataViewCtrlRaw
  DataViewTreeCtrlRaw* {.importcpp: "wxDataViewTreeCtrl", header: "wx/dataview.h", pure.} = object of DataViewCtrlRaw
  PropertyGridRaw* {.importcpp: "wxPropertyGrid", header: "wx/propgrid/propgrid.h", pure.} = object of ControlRaw
  HyperlinkCtrlRaw* {.importcpp: "wxHyperlinkCtrl", header: "wx/hyperlink.h", pure.} = object of ControlRaw
  CalendarCtrlRaw* {.importcpp: "wxCalendarCtrl", header: "wx/calctrl.h", pure.} = object of ControlRaw
  CollapsiblePaneRaw* {.importcpp: "wxCollapsiblePane", header: "wx/collpane.h", pure.} = object of ControlRaw

  # Item classes
  DataViewItemRaw* {.importcpp: "wxDataViewItem", header: "wx/dataview.h", pure.} = object
  TreeItemIdRaw* {.importcpp: "wxTreeItemId", header: "wx/treebase.h", pure.} = object
  EventRaw* {.importcpp: "wxEvent", header: "wx/event.h", pure.} = object of WxObjectRaw

  # Utilities
  TimerRaw* {.importcpp: "wxTimer", header: "wx/timer.h", pure.} = object of EvtHandlerRaw
  ConfigRaw* {.importcpp: "wxConfigBase", header: "wx/config.h", pure.} = object of WxObjectRaw

  PointRaw* {.importcpp: "wxPoint", header: "wx/gdicmn.h".} = object
    x*, y*: cint
  SizeRaw* {.importcpp: "wxSize", header: "wx/gdicmn.h".} = object
    x*, y*: cint
  RectRaw* {.importcpp: "wxRect", header: "wx/gdicmn.h".} = object
    x*, y*, width*, height*: cint
  WxStringRaw* {.importcpp: "wxString", header: "wx/string.h".} = object
  VariantRaw* {.importcpp: "wxVariant", header: "wx/variant.h", pure.} = object

proc constructWxString*(s: cstring): WxStringRaw {.importcpp: "wxString::FromUTF8(@)", header: "wx/string.h".}
proc toUtf8*(s: WxStringRaw): cstring {.importcpp: "#.ToUTF8().data()", header: "wx/string.h".}
