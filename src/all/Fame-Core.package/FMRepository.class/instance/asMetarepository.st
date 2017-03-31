converting
asMetarepository

	| repo |
	repo := FMMetaRepository with: FMMetaRepository fm3.
	repo addAll: elements.
	^repo