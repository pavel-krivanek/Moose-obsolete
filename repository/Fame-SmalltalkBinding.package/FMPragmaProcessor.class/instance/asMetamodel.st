converting
asMetamodel
	| mm |
	mm := FMMetaRepository
		with: FMMetaRepository fm3.
	mm addAll: elements.
	^ mm