tokenizing
nextCharacterReferenceOnCharacterDataStream
	| result |

	driver handleStartEntityReferencePosition: self currentPosition.
	result := super nextCharacterReferenceOnCharacterDataStream.
	driver handleEndEntityReferencePosition: self currentPosition.

	^ result.