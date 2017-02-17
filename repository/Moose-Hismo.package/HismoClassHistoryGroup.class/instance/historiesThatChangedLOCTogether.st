cochange
historiesThatChangedLOCTogether
	
	| fca |
	fca := MalFormalContext new.
	fca
		with: self
		using: #yourself
		using: [:each | each referenceVersionsThatChangedPropertyNamed: #WLOC].
	^fca concepts