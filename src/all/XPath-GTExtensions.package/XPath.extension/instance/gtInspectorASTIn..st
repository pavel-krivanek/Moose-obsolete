*XPath-GTExtensions
gtInspectorASTIn: aComposite
	<gtInspectorPresentationOrder: 7>

	| ast astError |

	[ast :=
		(XPathExpressionParser
			on: self expressionSource
			for: XPathASTExpressionParserHandler new) parse]
		on: XPathException
		do: [:error |
			ast := nil.
			astError := error].

	aComposite tree
		title: 'AST';
		display: [{ast}];
		children: [:each | each treeViewChildren];
		format: [:each | each treeViewLabelText];
		when: [ast notNil];
		rootsExpanded.
	aComposite text
		title: 'AST';
		format: [self errorTextFor: astError];
		when: [ast isNil].