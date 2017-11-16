Extension { #name : #MASingleOptionDescription }

{ #category : #'*magritte-morph-defaults' }
MASingleOptionDescription class >> defaultMorphClasses [
	^ Array
			with: MASingleSelectListMorph
			with: MADropListMorph
]
