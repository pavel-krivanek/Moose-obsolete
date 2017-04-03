*XML-Parser-GTExtensions
gtInspectorSourceIn: aComposite inContext: aGTInspector
	<gtInspectorPresentationOrder: 6>
	
	| sourceEditor currentTextStylerDecorator |

	sourceEditor :=
		aComposite custom: 
			(self supportsSourceEditing
				ifTrue: [
					GLMRubricHighlightedTextPresentation new
						editingMode: [
							currentTextStylerDecorator :=
								self newSourceEditorTextStylerDecorator.
							GLMHighlighterTextRubEditingMode withStylerDecorator:
								currentTextStylerDecorator];
						act: [
							self
								acceptEditedSource: currentTextStylerDecorator text
								inContext: aGTInspector]
							icon: GLMUIThemeExtraIcons glamorousAccept
							on: $s
							entitled: 'Accept';
						act: [:presentation |
							presentation update]
							icon: GLMUIThemeExtraIcons glamorousUndo
							on: $Z
							entitled: 'Revert';
						act: [
							self promptForSourceSaveFileName
								ifNotEmpty: [:fileName |
									self
										acceptEditedSource: currentTextStylerDecorator text
										inContext: aGTInspector.
									currentTextStylerDecorator saveToFile: fileName]]
							icon: GLMUIThemeExtraIcons glamorousSave
							entitled: 'Save']
				ifFalse: [
					GLMXMLDisabledRubricHighlightedTextPresentation new
						editingMode: [
							currentTextStylerDecorator :=
								GLMXMLDisabledDocumentHighlighterTextStylerDecorator
									disabledText: self asHighlightedSourceText
									encoding:
										(self document
											ifNil: ['']
											ifNotNil: [:document | document encoding]).
							GLMHighlighterTextRubEditingMode withStylerDecorator:
								currentTextStylerDecorator];
						act: [
							self promptForSourceSaveFileName
								ifNotEmpty: [:fileName |
									currentTextStylerDecorator saveToFile: fileName]]
							icon: GLMUIThemeExtraIcons glamorousSave
							entitled: 'Save']).

	sourceEditor
		title: 'Source';
		display: [self asHighlightedSourceText];
		withLineNumbers: true.

	self
		addRemoveActionTo: sourceEditor
		in: aComposite
		inContext: aGTInspector.