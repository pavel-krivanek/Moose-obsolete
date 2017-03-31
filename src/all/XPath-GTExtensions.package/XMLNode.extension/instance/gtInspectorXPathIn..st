*XPath-GTExtensions
gtInspectorXPathIn: aComposite
	<gtInspectorPresentationOrder: 9>

	self supportsXPathEvaluator
		ifFalse: [^ self].

	aComposite custom:
		(GLMRubricHighlightedTextPresentation new
			title: 'XPath';
			editingMode: [
				GLMHighlighterTextRubEditingMode withStylerDecorator:
					GLMXPathHighlighterTextStylerDecorator new];
			display: [''];
			withLineNumbers: true;
			selectionAct: [:presentation |
				presentation
					selection:
						(self xpath: 
							(presentation selectedText asString
								ifEmpty: [presentation text asString]));
					clearUserEdits]
				on: $g
				entitled: 'Evaluate and go';
			act: [:presentation |
				presentation
					selection: (self xpath: presentation text asString);
					clearUserEdits]
				icon: GLMUIThemeExtraIcons glamorousGo
				on: $G
				entitled: 'Evaluate all and go').