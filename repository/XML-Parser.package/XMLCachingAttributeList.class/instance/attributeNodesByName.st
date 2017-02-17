private
attributeNodesByName
	^ attributeNodesByName
		ifNil: [attributeNodesByName := Dictionary new: self capacity]