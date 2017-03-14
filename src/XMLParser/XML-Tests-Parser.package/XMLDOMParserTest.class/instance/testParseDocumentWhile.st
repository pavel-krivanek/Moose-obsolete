tests
testParseDocumentWhile
	| i document |

	self
		shouldnt: [
			i := 0.
			document :=
				(XMLDOMParser on: '<root><one>two<#malformed')
					parseDocumentWhile: [(i := i + 1) <= 4]]
		raise: XMLWellFormednessException.
	self
		assert: document allNodes size = 4;
		assert: (document findElementNamed: 'one') nodes size = 1;
		assert: (document findElementNamed: 'one') contentString = 'two'.
	self
		should: [
			i := 0.
			(XMLDOMParser on: '<root><one>two<#malformed')
				parseDocumentWhile: [(i := i + 1) <= 5]]
		raise: XMLWellFormednessException.