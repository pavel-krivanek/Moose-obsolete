private
pvtSafeSourceCode

	| aStringOrUnresolved |
	aStringOrUnresolved := self pvtSourceCode. 
	^ aStringOrUnresolved isRingResolved
		ifFalse: [ 
			self pvtName isRingResolved 
				ifTrue: [ self sourceCodeForNoSource ]
				ifFalse: [ self sourceCodeForNoSelector ] ]
		ifTrue: [ aStringOrUnresolved value ]