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
				XMLExternalDocumentConverter convert: xmlFileHandle rawReadStream];
			withLineNumbers: true;
			act: [:presentation |
				presentation selection:
					(XMLDOMParser parse: presentation text asString)]
				icon: GLMUIThemeExtraIcons glamorousGo
				on: $g
				entitled: 'Go';
			act: [:presentation |
				currentTextStylerDecorator saveToFile: xmlFileHandle.
				presentation pane update]
				icon: GLMUIThemeExtraIcons glamorousSave
				on: $s
				entitled: 'Save';
			act: [:presentation | presentation pane update]
				icon: GLMUIThemeExtraIcons glamorousUndo
				on: $Z
				entitled: 'Revert').