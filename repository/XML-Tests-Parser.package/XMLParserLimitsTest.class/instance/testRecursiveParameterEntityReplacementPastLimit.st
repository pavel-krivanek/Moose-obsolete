tests
testRecursiveParameterEntityReplacementPastLimit
	| limit xml |

	limit := 3.
	xml :=
		self
			xmlWithRecursiveEntitiesNamed: 'entity'
			depth: limit + 1
			isParameter: true.
	self
		should: [
			(SAXHandler on: xml)
				maxEntityReplacementDepth: limit;
				parseDocument]
		raise: XMLLimitException.
	self
		shouldnt: [
			(SAXHandler on: xml)
				maxEntityReplacementDepth: nil;
				parseDocument]
		raise: XMLLimitException.