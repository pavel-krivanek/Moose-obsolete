*XML-Parser-GTExtensions
gtInspectorXMLIn: composite
	<gtInspectorPresentationOrder: 40>
	| document |

	[document := XMLDOMParser parse: self string]
		on: XMLParserException
		do: [^ self].
	(document gtInspectorTreeIn: composite)
		title: 'XML'