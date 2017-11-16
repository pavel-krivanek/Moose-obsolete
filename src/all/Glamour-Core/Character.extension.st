Extension { #name : #Character }

{ #category : #'*Glamour-Core' }
Character >> glmAsKeymap [
	^ self isUppercase 
			ifTrue: [ self meta shift ]
			ifFalse: [ self meta ]
]
