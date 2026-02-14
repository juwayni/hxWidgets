import common_types, object, utils
import ../wxraw/types

type
  ClassInfo* = ref object of Object

proc className*(self: ClassInfo): string = ""
proc baseClassName1*(self: ClassInfo): string = ""
