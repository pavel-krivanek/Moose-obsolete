*XML-Parser-GTExtensions
gtInspectorXMLFileIn: aComposite
	<gtInspectorPresentationOrder: 4>

	| xmlFileHandle currentTextStylerDecorator |

	xmlFileHandle := XMLFileSystemFileHandle fileReference: self.
	xmlFileHandle isXMLDocumentFile
		ifFalse: [^ self].

	aComposite custom:
		(GLMRubricHighlightedTextPresentation new
			title: 'Source';
			editingMode: [
				"saved to get the encoding later"
				currentTextStylerDecorator :=
					GLMXMLDocumentHighlighterTextStylerDecorator new.
				GLMHighlighterTextRubEditingMode withStylerDecorator:
					currentTextStylerDecorator];
			display: [
				XMLExternalDocumentConverter convert:
					xmlFileHandle rawReadStream];
			withLineNumbers: true;
			act: [:presentation |
				currentTextStylerDecorator saveToFile: xmlFileHandle.
				"update the entire pane, not just this presentation,
				because the file contents have changed"
				presentation pane update]
				icon: GLMUIThemeExtraIcons glamorousSave
				on: $s
				entitled: 'Save';
			act: [:presentation |
				"revert edits only in this presentation"
				presentation update]
				icon: GLMUIThemeExtraIcons glamorousUndo
				on: $Z
				entitled: 'Revert';
			"the selection action was removed because it reports the
			wrong #selectionText if the previous presentation viewed
			was a text presentation with a selection"
			act: [:presentation |
				"do not clear user edits because the source hasn't
				been accepted/saved"
				presentation selection:
					(XMLDOMParser parse:
						currentTextStylerDecorator text asString)]
				icon: GLMUIThemeExtraIcons glamorousGo
				on: $g
				entitled: 'Parse and go').