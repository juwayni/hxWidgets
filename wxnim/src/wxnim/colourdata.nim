import common_types, object, gdi
import ../wxraw/types

type
  ColourData* = ref object of Object

proc newColourData*(): ColourData =
  # placeholder
  result = ColourData(rawObj: nil)

proc getColour*(self: ColourData): Colour = nil
proc setColour*(self: ColourData, colour: Colour) = discard
proc setChooseFull*(self: ColourData, choose: bool) = discard
