accessing-meta
setOn: element values: array
	"This method is used by the repository"

	| parameter |

	"this is commented because it does not match"
	"self implementingSelector isNil
		ifTrue: [ ^element at: self put: array ]."
	parameter := self isMultivalued 
		ifTrue: [ array ]
		ifFalse: [ array isEmpty 
			ifTrue: [ nil ]
			ifFalse: [ 
				array size > 1 ifTrue: [ self error ].
				array first ]].
	element mmSetProperty: self to: parameter.