import wxnim, view, system
import wxnim/styles/[window_styles]

type
  SystemInfoView* = ref object of View

proc newSystemInfoView*(parent: Window): SystemInfoView =
  let v = newPanel(parent)
  let sizer = newBoxSizer(wxVERTICAL)

  let info = PlatformInfo()
  sizer.add(newStaticText(v, "OS: " & info.osName), 0, wxALL, 5)
  sizer.add(newStaticText(v, "64-bit: " & $info.is64Bit), 0, wxALL, 5)

  v.sizer = sizer
  return cast[SystemInfoView](v)
