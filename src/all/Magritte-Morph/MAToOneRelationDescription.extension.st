Extension { #name : #MAToOneRelationDescription }

{ #category : #'*magritte-morph-defaults' }
MAToOneRelationDescription class >> defaultMorphClasses [
	^ Array with: MAExternalEditorMorph with: MAInternalEditorMorph
]
