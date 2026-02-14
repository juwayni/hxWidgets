import ../wxraw/types

proc `$`*(s: WxStringRaw): string =
  var cs: cstring
  var length: int
  {.emit: """
    wxCharBuffer utf8 = `s`.ToUTF8();
    `cs` = (char*)utf8.data();
    `length` = utf8.length();
  """.}
  if length == 0:
    return ""
  result = newString(length)
  copyMem(addr result[0], cs, length)
