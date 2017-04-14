tokenizing - dtd
nextEntityValue
	| value |

	driver handleStartQuotedStringPosition: self currentPosition + 1.
	value := super nextEntityValue.
	driver handleEndQuotedStringPosition: self currentPosition.

	^ value.