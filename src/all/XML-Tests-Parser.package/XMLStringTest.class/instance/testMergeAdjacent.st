tests
testMergeAdjacent
	| element nodes |

	(element := self newElement)
		addNode: (self nodeClass string: 'one');
		addNode: (self nodeClass string: 'two');
		addNode: (self nodeClass string: 'three');
		addNode: XMLComment new;
		addNode: (self nodeClass string: 'four');
		addNode: (self nodeClass string: 'five');
		addNode: XMLComment new;
		addNode: (self nodeClass string: 'six').

	element nodes second mergeAdjacent.
	nodes := element nodes.
	self
		assert: nodes size = 6;
		assert: (nodes first isStringNode and: [nodes first string = 'onetwothree']);
		assert: nodes second isComment;
		assert: (nodes third isStringNode and: [nodes third string = 'four']);
		assert: (nodes fourth isStringNode and: [nodes fourth string = 'five']);
		assert: nodes fifth isComment;
		assert: (nodes sixth isStringNode and: [nodes sixth string = 'six']).

	nodes fourth mergeAdjacent.
	nodes fifth mergeAdjacent.
	self
		assert: nodes size = 5;
		assert: (nodes first isStringNode and: [nodes first string = 'onetwothree']);
		assert: nodes second isComment;
		assert: (nodes third isStringNode and: [nodes third string = 'fourfive']);
		assert: nodes fourth isComment;
		assert: (nodes fifth isStringNode and: [nodes fifth string = 'six']).