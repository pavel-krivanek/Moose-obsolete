accessing-meta
setOn: element values: array
	"This method is meant to be used by the repository"

	| parameter |
	self implementingSelector ifNil: [ ^element at: self put: array ].
	parameter := self isMultivalued 
		ifTrue: [ array ]
		ifFalse: [ array ifEmpty: [ nil ]
			ifNotEmpty: [ 
				array size > 1 ifTrue: [ self error ].
				array first ]].
	element mmSetProperty: self to: parameter.