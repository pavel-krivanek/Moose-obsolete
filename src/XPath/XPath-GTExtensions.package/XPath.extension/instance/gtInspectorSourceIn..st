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
				aComposite pane update]
				icon: GLMUIThemeExtraIcons glamorousAccept
				on: $s
				entitled: 'Accept';
			act: [:presentation |
				presentation update]
				icon: GLMUIThemeExtraIcons glamorousUndo
				entitled: 'Revert').