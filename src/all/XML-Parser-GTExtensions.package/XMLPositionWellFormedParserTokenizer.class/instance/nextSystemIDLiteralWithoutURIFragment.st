tokenizing - dtd
nextSystemIDLiteralWithoutURIFragment
	| systemID |

	driver handleStartQuotedStringPosition: self currentPosition + 1.
	systemID := super nextSystemIDLiteralWithoutURIFragment.
	driver handleEndQuotedStringPosition: self currentPosition.

	^ systemID.