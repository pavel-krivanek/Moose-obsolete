*XPath-GTExtensions
gtInspectorCompiledIn: aComposite
	<gtInspectorPresentationOrder: 8>

	aComposite pharoMethod
		title: 'Compiled';
		display: [
			[self compiledExpression block method]
				on: XPathException
				do: [:error |
					error class name asString, '
	"', error messageText, '"']];
		smalltalkClass: [
			[self compiledExpression block method methodClass]
				on: XPathException
				do: [:error | nil]]