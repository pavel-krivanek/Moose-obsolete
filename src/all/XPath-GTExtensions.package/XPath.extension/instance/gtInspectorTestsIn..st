*XPath-GTExtensions
gtInspectorTestsIn: aComposite
	<gtInspectorPresentationOrder: 9>

	| nodeTests nodeTestsError |

	[nodeTests := self compiledExpression nodeTests]
		on: XPathException
		do: [:error |
			nodeTests := nil.
			nodeTestsError := error].

	aComposite list
		title: 'Tests';
		display: [nodeTests];
		when: [nodeTests notNil].
	aComposite text
		title: 'Tests';
		format: [self errorTextFor: nodeTestsError];
		when: [nodeTests isNil].