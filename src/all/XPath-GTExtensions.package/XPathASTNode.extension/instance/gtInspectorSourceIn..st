*XPath-GTExtensions
gtInspectorSourceIn: aComposite
	<gtInspectorPresentationOrder: 6>

	aComposite custom:
		(GLMXMLDisabledRubricHighlightedTextPresentation new
			title: 'Source';
			editingMode: [
				GLMHighlighterTextRubEditingMode withStylerDecorator:
					(GLMXPathDisabledHighlighterTextStylerDecorator
						disabledText: self asHighlightedText)];
			display: [self asHighlightedText];
			withLineNumbers: true)