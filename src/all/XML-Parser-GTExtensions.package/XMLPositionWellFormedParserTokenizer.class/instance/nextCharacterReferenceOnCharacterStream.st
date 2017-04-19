tokenizing
nextCharacterReferenceOnCharacterStream
	| result |

	driver handleStartEntityReferencePosition: self currentPosition.
	result := super nextCharacterReferenceOnCharacterStream.
	driver handleEndEntityReferencePosition: self currentPosition.

	^ result.