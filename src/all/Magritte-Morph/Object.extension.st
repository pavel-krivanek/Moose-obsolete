Extension { #name : #Object }

{ #category : #'*magritte-morph-converting' }
Object >> asMagritteMorph [
	^ self magritteDescription asMorphOn: self
]

{ #category : #'*Magritte-Morph' }
Object >> maEdit [
 
	self asMagritteMorph
		addButtons;
		addWindow;
		openInWorld.
]

{ #category : #'*Magritte-Morph' }
Object >> magritteActionButtons [
	^ self magritteActionDescriptions collect: [ :e | e buttonOn: self ].
]
