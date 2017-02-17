tokenizing - dtd
nextSystemIDLiteralWithoutURIFragment
	| systemID |

	driver handleStartQuotedStringValuePosition: self currentPosition + 1.
	systemID := super nextSystemIDLiteralWithoutURIFragment.
	driver handleEndQuotedStringValuePosition: self currentPosition.

	^ systemID.