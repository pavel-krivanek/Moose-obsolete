*XPath-GTExtensions
gtInspectorCompiledIn: aComposite
	<gtInspectorPresentationOrder: 8>

	| block blockError |

	[block := self compiledExpression block]
		on: XPathException
		do: [:error |
			block := nil.
			blockError := error].

	aComposite pharoMethod
		title: 'Compiled';
		display: [block method];
		smalltalkClass: [block method methodClass];
		when: [block notNil].
	aComposite text
		title: 'Compiled';
		format: [self errorTextFor: blockError];
		when: [block isNil].