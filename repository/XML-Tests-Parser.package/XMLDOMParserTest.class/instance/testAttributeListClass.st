tests
testAttributeListClass
	(Array
		with: XMLAttributeList
		with: XMLCachingAttributeList)
		do: [:listClass | | document parser |
			parser := XMLDOMParser on: self addressBookXML.
			parser configuration attributeListClass: listClass.
			document := parser parseDocument.
			self assert: parser configuration attributeListClass == listClass.
			document allElements do: [:each |
				self assert: each attributeNodes class == listClass]]