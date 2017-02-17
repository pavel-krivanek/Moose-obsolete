tokenizing - dtd
nextSystemIDLiteral
	| systemID |

	driver handleStartQuotedStringValuePosition: self currentPosition + 1.
	systemID := super nextSystemIDLiteral.
	driver handleEndQuotedStringValuePosition: self currentPosition.

	^ systemID.