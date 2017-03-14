instance creation
newElementWithNamespaces
	^ (XMLElement named: 'test')
		declarePrefix: 'one' uri: 'oneNS';
		declarePrefix: 'two' uri: 'twoNS';
		declarePrefix: 'three' uri: 'threeNS';
		yourself