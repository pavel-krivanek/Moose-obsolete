*XML-Parser-GTExtensions
gtInspectorXmlIn: composite
	<gtInspectorPresentationOrder: 40>
	| xml |
	xml := [XMLDOMParser parse: self string]
		on: XMLParserException
		do: [ ^ self ].
	(xml gtInspectorTreeIn: composite)
		title: 'XML'