tests
testNodeListClass
	(Array
		with: XMLNodeList
		with: XMLCachingNodeList)
		do: [:listClass | | document parser |
			parser := XMLDOMParser on: self addressBookXML.
			parser configuration nodeListClass: listClass.
			document := parser parseDocument.
			self
				assert: parser configuration nodeListClass == listClass;
				assert: document nodes class == listClass.
			document allElements do: [:each |
				self assert: each nodes class == listClass]]