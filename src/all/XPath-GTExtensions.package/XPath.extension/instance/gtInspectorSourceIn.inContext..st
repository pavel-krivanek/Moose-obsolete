*XPath-GTExtensions
gtInspectorSourceIn: aComposite inContext: aGTInspector
	<gtInspectorPresentationOrder: 6>

	| currentTextStylerDecorator |

	aComposite custom:
		(GLMRubricHighlightedTextPresentation new
			title: 'Source';
			editingMode: [
				currentTextStylerDecorator :=
					GLMXPathHighlighterTextStylerDecorator new.
				GLMHighlighterTextRubEditingMode withStylerDecorator:
					currentTextStylerDecorator];
			display: [self expressionSource];
			withLineNumbers: true;
			act: [:presentation |
				self expressionSource: currentTextStylerDecorator text asString.
				[aGTInspector panes size > 1]
					whileTrue: [aGTInspector removeLastPane].
				aComposite pane update]
				icon: GLMUIThemeExtraIcons glamorousAccept
				on: $s
				entitled: 'Accept';
			act: [:presentation |
				presentation update]
				icon: GLMUIThemeExtraIcons glamorousUndo
				on: $Z
				entitled: 'Revert').