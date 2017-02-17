tokenizing - dtd
nextPublicIDLiteral
	| publicID |

	driver handleStartQuotedStringValuePosition: self currentPosition + 1.
	publicID := super nextPublicIDLiteral.
	driver handleEndQuotedStringValuePosition: self currentPosition.

	^ publicID.