Extension { #name : #MAContainer }

{ #category : #'*magritte-morph-converting' }
MAContainer >> asMorphOn: anObject [
	^ self morphClass
		memento: (anObject mementoClass
			model: anObject
			description: self)
]

{ #category : #'*magritte-morph-defaults' }
MAContainer class >> defaultMorphClasses [
	^ Array with: MAContainerMorph
]
