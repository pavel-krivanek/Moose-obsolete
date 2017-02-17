tests
testRecursiveParameterEntityReplacement
	| limit xml |

	limit := 3.
	xml :=
		self
			xmlWithRecursiveEntitiesNamed: 'entity'
			depth: limit
			isParameter: true.
	self
		shouldnt: [
			(SAXHandler on: xml)
				maxEntityReplacementDepth: limit;
				parseDocument]
		raise: XMLLimitException.