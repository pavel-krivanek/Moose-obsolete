tests
testAttributeParent
	(XMLDOMParser parse: self addressBookXML) allElementsDo: [:element |
		element hasAttributes
			ifTrue: [
				element attributeNodesDo: [:each |
					self
						assert: each hasParent;
						assert: each parent == element;
						assert: each element == element]]]