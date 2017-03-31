tokenizing - dtd
nextParameterEntityReference
	driver handleStartEntityReferencePosition: self currentPosition.
	self nextName.
	driver handleEndEntityReferencePosition: self currentPosition + 1.
	self expectNext: $;.
	^ false.