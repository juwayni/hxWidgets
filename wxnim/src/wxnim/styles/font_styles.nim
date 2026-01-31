type
  FontFamily* = distinct cint
var
  fontFamilyDefault* {.importcpp: "wxFONTFAMILY_DEFAULT", header: "wx/font.h".}: FontFamily
  fontFamilyDecorative* {.importcpp: "wxFONTFAMILY_DECORATIVE", header: "wx/font.h".}: FontFamily
  fontFamilyRoman* {.importcpp: "wxFONTFAMILY_ROMAN", header: "wx/font.h".}: FontFamily
  fontFamilyScript* {.importcpp: "wxFONTFAMILY_SCRIPT", header: "wx/font.h".}: FontFamily
  fontFamilySwiss* {.importcpp: "wxFONTFAMILY_SWISS", header: "wx/font.h".}: FontFamily
  fontFamilyModern* {.importcpp: "wxFONTFAMILY_MODERN", header: "wx/font.h".}: FontFamily
  fontFamilyTeletype* {.importcpp: "wxFONTFAMILY_TELETYPE", header: "wx/font.h".}: FontFamily

type
  FontStyle* = distinct cint
var
  fontStyleNormal* {.importcpp: "wxFONTSTYLE_NORMAL", header: "wx/font.h".}: FontStyle
  fontStyleItalic* {.importcpp: "wxFONTSTYLE_ITALIC", header: "wx/font.h".}: FontStyle
  fontStyleSlant* {.importcpp: "wxFONTSTYLE_SLANT", header: "wx/font.h".}: FontStyle

type
  FontWeight* = distinct cint
var
  fontWeightNormal* {.importcpp: "wxFONTWEIGHT_NORMAL", header: "wx/font.h".}: FontWeight
  fontWeightLight* {.importcpp: "wxFONTWEIGHT_LIGHT", header: "wx/font.h".}: FontWeight
  fontWeightBold* {.importcpp: "wxFONTWEIGHT_BOLD", header: "wx/font.h".}: FontWeight
