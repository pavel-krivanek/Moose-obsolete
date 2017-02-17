tokenizing - dtd
nextEntityValue
	| entityValue |

	driver handleStartQuotedStringValuePosition: self currentPosition + 1.
	entityValue := super nextEntityValue.
	driver handleEndQuotedStringValuePosition: self currentPosition.

	^ entityValue.