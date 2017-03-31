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
			act: [:presentation | | sourceToSave streamConverter |
				sourceToSave := presentation text asString.
				streamConverter :=
					currentTextStylerDecorator hasEncoding
						ifTrue: [currentTextStylerDecorator encoding asXMLStreamConverter]
						ifFalse: [XMLStreamConverter default].
				xmlFileHandle writeStreamDo: [:writeStream |
					writeStream
						streamConverter: streamConverter;
						nextPutByteOrderMark;
						nextPutAll: sourceToSave].
				presentation clearUserEdits]
				icon: GLMUIThemeExtraIcons glamorousSave
				on: $s
				entitled: 'Save').