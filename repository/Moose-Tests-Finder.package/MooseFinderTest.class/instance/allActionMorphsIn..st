utils
allActionMorphsIn: aMorph
	| answer |
	answer := OrderedCollection new.
	aMorph submorphs do: [ :s | 
		s subMenu 
			ifNil: [ answer add: s]
			ifNotNil: [ answer addAll: (self allActionMorphsIn: s subMenu)]
	].
	^ answer