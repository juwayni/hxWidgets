import ../wxraw/types

proc `$`*(s: WxStringRaw): string =
  $s.toUtf8()
