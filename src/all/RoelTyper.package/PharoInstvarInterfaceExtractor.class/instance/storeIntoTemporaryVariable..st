instruction decoding
storeIntoTemporaryVariable: offset
	"Store Top Of Stack Into Temporary Variable Of Method bytecode."

	"Nothing to do,since I do not treat temporary variables for the moment."
	

	| rvalue |
  	stack isEmpty ifTrue: [
		self flag: 'bug here. For now just do nothing. uncomment the halt to run the example. 
		It seems that there is a general problem with this method, see also TypeCollector >> handleAssignment:forTmp: '.
		"Try for example: 
			TypeCollector typeInstvar:  #superclass ofClassWithLookup:   Behavior "
		"self halt."
		^ self.
		].
	collector
		handleAssignment: (rvalue := stack removeLast)
		forTmp: offset.
	stack add: rvalue