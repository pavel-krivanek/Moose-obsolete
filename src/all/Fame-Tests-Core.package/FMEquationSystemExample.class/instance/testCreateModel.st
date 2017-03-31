running
testCreateModel

	| metarepo repo |
	metarepo := self class createMetamodel.
	repo := FMRepository with: metarepo.
	repo importString: self class modelString.
	^repo