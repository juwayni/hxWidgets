import common_types, events
import ../wxraw/types

type
  DataViewEvent* = ref object of NotifyEvent

proc getColumn*(self: DataViewEvent): int = 0
proc getItem*(self: DataViewEvent): DataViewItem = DataViewItemRaw()
