tests
testNodeParent
	(XMLDOMParser parse: self addressBookXML) allNodesDo: [:node |
		node hasChildren
			ifTrue: [
				node nodesDo: [:each |
					self
						assert: each hasParent;
						assert: each parent == node]]]