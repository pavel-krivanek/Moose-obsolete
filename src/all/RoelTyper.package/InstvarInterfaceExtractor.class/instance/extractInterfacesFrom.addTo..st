extracting
extractInterfacesFrom: m addTo: aTypeCollector
	method := m.
	saveStacks := Dictionary new.
	stack := OrderedCollection new.
	"0 to: method numTemps - 1 do: [:i | stack add: #temp -> i ]."
	initialStack := stack copy.
	collector := aTypeCollector.
	input := InstructionStream on: method.
	blockTraversal := false.
	blockArgs := 0.
	[input atEnd]
		whileFalse:
			[self reloadStack.
			input interpretNextInstructionFor: self]