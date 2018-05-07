Extension { #name : #MADescription }

{ #category : #'*magritte-model-builder' }
MADescription >> canExpand [
	" used to expand a relation description into a group "
	^self propertyAt: #canExpand ifAbsent: [ self defaultCanExpand ]
]

{ #category : #'*magritte-model-builder' }
MADescription >> canExpand: aBoolean [
	" used to expand a relation description into a group "
	^self propertyAt: #canExpand put: aBoolean
]

{ #category : #'*magritte-model-builder' }
MADescription >> defaultCanExpand [
	" used to expand a relation description into a group "
	self isVisible ifFalse: [ ^false ].
	self isReadonly ifTrue: [ ^false ].
	self tabDisplay ifTrue: [ ^false ].
	self group ifNotNil: [ ^false ].
	^true
]
