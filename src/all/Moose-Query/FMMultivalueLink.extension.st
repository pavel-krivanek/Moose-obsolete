Extension { #name : #FMMultivalueLink }

{ #category : #'*Moose-Query' }
FMMultivalueLink >> atScope: aFAMIXClass in: aCollection [
	^ values atScope: aFAMIXClass in: aCollection
]

{ #category : #'*Moose-Query' }
FMMultivalueLink >> toScope: aFAMIXClass in: aCollection [
	^ values toScope: aFAMIXClass in: aCollection
]

{ #category : #'*Moose-Query' }
FMMultivalueLink >> withScope: aFAMIXClass in: aCollection [
	^ values withScope: aFAMIXClass in: aCollection
]
