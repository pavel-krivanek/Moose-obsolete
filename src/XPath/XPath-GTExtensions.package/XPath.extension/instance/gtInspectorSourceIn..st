*XPath-GTExtensions
gtInspectorSourceIn: aComposite
	<gtInspectorPresentationOrder: 7>

	aComposite custom:
		(GLMRubricHighlightedTextPresentation new
			title: 'Source';
			editingMode: [
				GLMHighlighterTextRubEditingMode withStylerDecorator:
					GLMXPathHighlighterTextStylerDecorator new];
			display: [self expressionSource];
			withLineNumbers: true;
			act: [:presentation |
				self expressionSource: presentation text asString.
				presentation clearUserEdits.
				aComposite pane update]
				icon: GLMUIThemeExtraIcons glamorousAccept
				on: $s
				entitled: 'Save').