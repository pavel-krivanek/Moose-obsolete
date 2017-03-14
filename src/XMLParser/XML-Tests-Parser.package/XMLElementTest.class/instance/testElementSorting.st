tests
testElementSorting
	| element |

	(element := self nodeClass named: 'sorted')
		addElementNamed: 'c';
		addElementNamed: 'b';
		addElementNamed: 'a'.

	self assert: (element nodes sorted collect: [:each | each name]) asArray = #('a' 'b' 'c').
	self assert:
		((element nodes sorted: [:a :b | a name <= b name])
			collect: [:each | each name]) asArray = #('a' 'b' 'c').

	self assert: (element nodesCollect: [:each | each name]) asArray = #('c' 'b' 'a').
	element nodes sort.
	self assert: (element nodesCollect: [:each | each name]) asArray = #('a' 'b' 'c').
	element nodes sort: [:a :b | a name > b name].
	self assert: (element nodesCollect: [:each | each name]) asArray = #('c' 'b' 'a').