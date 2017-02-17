private-pragmas
resolveFameName: var
	"See FMPragmaProcessor>>ensureClass:"

	| class |
	"Try to resolve a Smalltalk class"
	class := self class environment at: var asString asSymbol ifAbsent: [ nil ].
	class ifNotNil: [ 
		"Look for a class pragma"
		[ ^ self resolveFameNameFromPragma: class ] on: Error do: [ ^ var ] ].
	"Assume this is already a Fame type"
	^ var