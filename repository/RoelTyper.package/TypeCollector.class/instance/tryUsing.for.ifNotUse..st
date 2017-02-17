private
tryUsing: receiver for: selector ifNotUse: aClass
	"If receiver has a type, and the selector is understood by that type, pass that type. If not, use aClass as type."

	| cl |
	cl := self assignmentTypeOf: receiver.
	^(cl notNil and: [cl methodDict includesKey: selector])
		ifTrue: [cl]
		ifFalse: [aClass]