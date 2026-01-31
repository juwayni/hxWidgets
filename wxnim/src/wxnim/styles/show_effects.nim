type
  ShowEffect* = distinct cint
var
  showEffectNone* {.importcpp: "wxSHOW_EFFECT_NONE", header: "wx/window.h".}: ShowEffect
  showEffectRollToLeft* {.importcpp: "wxSHOW_EFFECT_ROLL_TO_LEFT", header: "wx/window.h".}: ShowEffect
  showEffectRollToRight* {.importcpp: "wxSHOW_EFFECT_ROLL_TO_RIGHT", header: "wx/window.h".}: ShowEffect
  showEffectSlideToLeft* {.importcpp: "wxSHOW_EFFECT_SLIDE_TO_LEFT", header: "wx/window.h".}: ShowEffect
  showEffectSlideToRight* {.importcpp: "wxSHOW_EFFECT_SLIDE_TO_RIGHT", header: "wx/window.h".}: ShowEffect
  showEffectBlend* {.importcpp: "wxSHOW_EFFECT_BLEND", header: "wx/window.h".}: ShowEffect
  showEffectExpand* {.importcpp: "wxSHOW_EFFECT_EXPAND", header: "wx/window.h".}: ShowEffect
