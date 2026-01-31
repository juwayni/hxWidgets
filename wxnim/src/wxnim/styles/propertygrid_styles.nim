type
  PropertyGridStyle* = distinct clong
var
  pgDefaultStyle* {.importcpp: "wxPG_DEFAULT_STYLE", header: "wx/propgrid/propgrid.h".}: PropertyGridStyle
  pgAutoSort* {.importcpp: "wxPG_AUTO_SORT", header: "wx/propgrid/propgrid.h".}: PropertyGridStyle
  pgHideCategories* {.importcpp: "wxPG_HIDE_CATEGORIES", header: "wx/propgrid/propgrid.h".}: PropertyGridStyle
  pgBoldModified* {.importcpp: "wxPG_BOLD_MODIFIED", header: "wx/propgrid/propgrid.h".}: PropertyGridStyle
  pgSpliterAutoCenter* {.importcpp: "wxPG_SPLITTER_AUTO_CENTER", header: "wx/propgrid/propgrid.h".}: PropertyGridStyle

type
  PropertyGridAttribute* = string
var
  pgAttrDefaultValue* {.importcpp: "wxPG_ATTR_DEFAULT_VALUE", header: "wx/propgrid/propgrid.h".}: PropertyGridAttribute
  pgAttrMin* {.importcpp: "wxPG_ATTR_MIN", header: "wx/propgrid/propgrid.h".}: PropertyGridAttribute
  pgAttrMax* {.importcpp: "wxPG_ATTR_MAX", header: "wx/propgrid/propgrid.h".}: PropertyGridAttribute
  pgAttrUnits* {.importcpp: "wxPG_ATTR_UNITS", header: "wx/propgrid/propgrid.h".}: PropertyGridAttribute
  pgAttrHint* {.importcpp: "wxPG_ATTR_HINT", header: "wx/propgrid/propgrid.h".}: PropertyGridAttribute
