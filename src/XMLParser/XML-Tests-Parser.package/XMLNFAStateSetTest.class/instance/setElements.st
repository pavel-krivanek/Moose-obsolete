accessing
setElements
	states
		ifNil: [
			states :=
				Array
					with: (XMLNFAMatchingState matcher: 'one')
					with: XMLNFAAcceptingState new
					with: (XMLNFAMatchingState matcher: 'two')
					with: XMLNFAAcceptingState new].
	^ states copy.