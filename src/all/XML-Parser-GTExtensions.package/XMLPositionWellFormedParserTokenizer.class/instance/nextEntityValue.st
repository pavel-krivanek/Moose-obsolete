tokenizing - dtd
nextEntityValue
	| entityValue |

	driver handleStartQuotedStringPosition: self currentPosition + 1.
	entityValue := super nextEntityValue.
	driver handleEndQuotedStringPosition: self currentPosition.

	^ entityValue.