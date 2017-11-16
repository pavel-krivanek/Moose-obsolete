Extension { #name : #Exception }

{ #category : #'*Beacon-Core-Core' }
Exception >> emit [
	^ ExceptionSignal emit: self
]

{ #category : #'*Beacon-Core-Core' }
Exception >> log [
	self deprecated: 'Should use #emit'.
	^ self emit
]
