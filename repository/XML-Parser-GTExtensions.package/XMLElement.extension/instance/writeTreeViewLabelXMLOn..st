*XML-Parser-GTExtensions
writeTreeViewLabelXMLOn: aWriter
	self requiresTreeView
		ifTrue: [
			aWriter startTag
				name: self name;
				"uses setAttributes: for performance"
				setAttributes: attributes]
		ifFalse: [| tagWriter |
			(tagWriter := aWriter tag)
				name: self name;
				"uses setAttributes: for performance"
				setAttributes: attributes.
			self hasChildren
				ifTrue: [
					tagWriter with: [
						self writeInnerXMLOn: aWriter]]].