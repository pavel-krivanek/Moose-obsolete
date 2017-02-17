elementsInParentheses
indexedColumnsInRoundParentheses

	^$( asPParser trim , (indexedColumn separatedBy: $, asPParser trim ) , $) asPParser trim