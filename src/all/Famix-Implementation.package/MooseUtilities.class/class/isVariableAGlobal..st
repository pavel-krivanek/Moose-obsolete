getting classes
isVariableAGlobal: aString
	"returns true if aString represents a GlobalVariable"

	| globalObject |
	globalObject := Smalltalk at: aString printString withoutQuoting asSymbol ifAbsent: [^false].
	^ globalObject isBehavior not and: [globalObject isTrait not].

	"qualified := aString asQualifiedReference.
	qualified isDefined ifFalse: [^false].
	bin := qualified bindingOrNil.
	^bin isNil
		ifTrue: [false]
		ifFalse: [bin isForGeneral]"