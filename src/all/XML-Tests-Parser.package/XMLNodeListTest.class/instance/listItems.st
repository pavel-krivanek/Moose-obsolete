accessing
listItems
	nodes
		ifNil: [
			document := XMLDocument new.
			(document addElementNamed: 'root')
				addElementNamed: 'one';
				addString: 'two';
				addElementNamed: 'prefix:three' namespaceURI: 'prefixNS';
				addNode: (XMLComment string: 'four');
				addElementNamed: 'three';
				addString: 'five';
				addElementNamed: 'six';
				addNode: (XMLPI target: 'seven' data: 'seven');
				addElementNamed: 'eight';
				addString: 'nine'.
			nodes := document root nodes asArray].
	"return a copy of the array, but share the nodes"
	^ nodes copy.