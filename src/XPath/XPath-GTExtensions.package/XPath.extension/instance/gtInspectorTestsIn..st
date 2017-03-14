*XPath-GTExtensions
gtInspectorTestsIn: aComposite
	<gtInspectorPresentationOrder: 9>

	aComposite list
		title: 'Tests';
		display: [
			[self compiledExpression nodeTests]
				on: XPathException
				do: [:error | #()]]