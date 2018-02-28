Extension { #name : #MAContainer }

{ #category : #'*magritte-model-builder' }
MAContainer >> descriptionBuilder [
	^self propertyAt: #descriptionBuilder ifAbsent: [ nil ]
]

{ #category : #'*magritte-model-builder' }
MAContainer >> descriptionBuilder: aBuilderClass [
	self propertyAt: #descriptionBuilder put: aBuilderClass
]

{ #category : #'*magritte-model-builder' }
MAContainer >> descriptionBuilders [
	^self propertyAt: #descriptionBuilders ifAbsent: [ #() ]
]

{ #category : #'*magritte-model-builder' }
MAContainer >> descriptionBuilders: aList [ 
	self descriptionBuilder: MAComposedDescriptionBuilder.
	self propertyAt: #descriptionBuilders put: aList
]
