*XML-Parser-GTExtensions
spotterForXMLFileFor: aStep
	<spotterOrder: 40>

	| xmlFileHandle |

	xmlFileHandle := XMLFileSystemFileHandle fileReference: self.
	xmlFileHandle isXMLDocumentFile
		ifFalse: [^ self].

	aStep listProcessor
		title: 'XML Document';
		allCandidates: [
			(XMLDOMParser parse: xmlFileHandle rawReadStream) allElements];
		itemName: #gtDisplayString;
		filter: GTFilterSubstring;
		wantsToDisplayOnEmptyQuery: true.