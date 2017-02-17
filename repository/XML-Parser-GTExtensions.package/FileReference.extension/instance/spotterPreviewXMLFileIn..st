*XML-Parser-GTExtensions
spotterPreviewXMLFileIn: aComposite
	<spotterPreview: 10>

	| xmlFileHandle |

	xmlFileHandle := XMLFileSystemFileHandle fileReference: self.
	xmlFileHandle isXMLDocumentFile
		ifFalse: [^ self].

	aComposite text
		title: 'Source';
		display: [
			"the source is converted to a decoded string and then highlighted"
			XMLHighlightingParser parse:
				(XMLExternalDocumentConverter convert: xmlFileHandle rawReadStream)];
		entity: self.