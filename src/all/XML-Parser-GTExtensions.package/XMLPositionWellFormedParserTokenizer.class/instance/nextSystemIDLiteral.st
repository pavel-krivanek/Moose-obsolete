tokenizing - dtd
nextSystemIDLiteral
	| systemID |

	driver handleStartQuotedStringPosition: self currentPosition + 1.
	systemID := super nextSystemIDLiteral.
	driver handleEndQuotedStringPosition: self currentPosition.

	^ systemID.