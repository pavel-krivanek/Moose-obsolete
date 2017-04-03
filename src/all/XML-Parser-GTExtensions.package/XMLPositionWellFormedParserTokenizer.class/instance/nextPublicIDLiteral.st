tokenizing - dtd
nextPublicIDLiteral
	| publicID |

	driver handleStartQuotedStringPosition: self currentPosition + 1.
	publicID := super nextPublicIDLiteral.
	driver handleEndQuotedStringPosition: self currentPosition.

	^ publicID.