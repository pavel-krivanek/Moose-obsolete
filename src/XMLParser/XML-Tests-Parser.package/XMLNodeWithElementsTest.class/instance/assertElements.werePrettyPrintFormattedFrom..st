asserting
assertElements: aPrettyPrintFormattedElementCollection werePrettyPrintFormattedFrom: anElementCollection
	anElementCollection
		with: aPrettyPrintFormattedElementCollection
		do: [:element :prettyElement |
			element hasChildren
				ifTrue: [
					"if the first node wasn't a string node, then whitespace
					formatting should have been output before it"
					element firstNode isStringNode
						ifFalse: [
							self
								assert: prettyElement firstNode isStringNode;
								assert: prettyElement firstNode isWhitespace].

					"if there were no string nodes at all, then trailing
					whitespace formatting should have been output"	
					element hasStringNodes
						ifFalse: [
							self
								assert: prettyElement lastNode isStringNode;
								assert: prettyElement lastNode isWhitespace]]].