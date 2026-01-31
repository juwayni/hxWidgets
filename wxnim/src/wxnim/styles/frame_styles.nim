type
  FrameStyle* = distinct clong

proc `or`*(a, b: FrameStyle): FrameStyle {.borrow.}

var
  fsDefaultStyle* {.importcpp: "wxDEFAULT_FRAME_STYLE", header: "wx/frame.h".}: FrameStyle
  fsCaption* {.importcpp: "wxCAPTION", header: "wx/frame.h".}: FrameStyle
  fsMinimizeBox* {.importcpp: "wxMINIMIZE_BOX", header: "wx/frame.h".}: FrameStyle
  fsMaximizeBox* {.importcpp: "wxMAXIMIZE_BOX", header: "wx/frame.h".}: FrameStyle
  fsResizeBorder* {.importcpp: "wxRESIZE_BORDER", header: "wx/frame.h".}: FrameStyle
