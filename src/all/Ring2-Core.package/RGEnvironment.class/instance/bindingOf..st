binding
bindingOf: aSymbol
	
	| behavior result |
	
	self globalVariablesBindings at: aSymbol ifPresent: [ :val | ^ val ].
	
	self ask globalVariables detect: [ :each | each name = aSymbol  ] ifFound: [ :found | 
		self globalVariablesBindings at: aSymbol put: found.
		^ found ].

	behavior := self ask behaviorNamed: aSymbol.
	result := behavior ifNotNil: [ GlobalVariable key: aSymbol value: behavior].
	self globalVariablesBindings at: aSymbol put: result.
	^ result