*XML-Parser-GTExtensions
gtInspectorSourceIn: aComposite inContext: aGTInspector
	<gtInspectorPresentationOrder: 6>

	self
		addRemoveActionTo:
			(aComposite custom: 
				(self supportsSourceEditing
					ifTrue: [
						GLMRubricHighlightedTextPresentation new
							title: 'Source';
							editingMode: [
								GLMHighlighterTextRubEditingMode withStylerDecorator:
									self newSourceEditorTextStylerDecorator];
							display: [self asHighlightedSourceText];
							withLineNumbers: true;
							act: [:presentation |
								| newOuterXMLNode currentPane |
								newOuterXMLNode :=
									self outerXMLFromEditedSource:
										presentation text asString.
								currentPane := aComposite pane.
								(aGTInspector panes copyUpTo: currentPane)
									ifEmpty: [
										"no previous panes; delete any panes after the
										current and make its selection the new outer XML
										node (closing and reopening is a hack but it
										works for now)"
										aGTInspector browser close.
										aGTInspector openOn: newOuterXMLNode]
									ifNotEmpty: [:previousPanes |
										"update all previous panes and replace the current
										pane one selecting the new outer XML node"
										previousPanes do: [:each | each update].
										previousPanes last presentations first
											selection: newOuterXMLNode]]
								icon: GLMUIThemeExtraIcons glamorousAccept
								on: $s
								entitled: 'Accept';
							act: [:presentation |
								presentation update]
								icon: GLMUIThemeExtraIcons glamorousUndo
								entitled: 'Revert']
					ifFalse: [
						GLMXMLDisabledRubricHighlightedTextPresentation new
							title: 'Source';
							editingMode: [
								GLMHighlighterTextRubEditingMode withStylerDecorator:
									(GLMXMLDisabledDocumentHighlighterTextStylerDecorator
										disabledText: self asHighlightedSourceText)];
							display: [self asHighlightedSourceText];
							withLineNumbers: true]))
		in: aComposite
		inContext: aGTInspector