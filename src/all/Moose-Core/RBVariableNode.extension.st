Extension { #name : #RBVariableNode }

{ #category : #'*Moose-Core' }
RBVariableNode >> isSuper [

	^ token value asString = 'super'
]
