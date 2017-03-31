*XML-Parser-GTExtensions
writeTreeViewLabelXMLOn: aWriter
	self supportsTreeView
		ifTrue: [
			"write just an unclosed start tag if the element can be expanded
			to display tree view children"
			aWriter startTag
				name: self name;
				"uses setAttributes: for performance"
				setAttributes: attributes]
		ifFalse: [| tagWriter |
			(tagWriter := aWriter tag)
				name: self name;
				"uses setAttributes: for performance"
				setAttributes: attributes.
			"a non-expandable element can still have chilren (string nodes) that
			need to be written"
			self hasChildren
				ifTrue: [
					tagWriter with: [
						self writeInnerXMLOn: aWriter]]]