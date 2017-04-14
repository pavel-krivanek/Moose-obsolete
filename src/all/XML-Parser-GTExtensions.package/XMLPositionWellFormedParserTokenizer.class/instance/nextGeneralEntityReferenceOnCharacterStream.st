tokenizing
nextGeneralEntityReferenceOnCharacterStream
	isInEntityReference := true.
	driver handleStartEntityReferencePosition: self currentPosition.
	self nextEntityName.
	driver handleEndEntityReferencePosition: self currentPosition + 1.
	self expectNext: $;.
	isInEntityReference := false.

	^ nil.