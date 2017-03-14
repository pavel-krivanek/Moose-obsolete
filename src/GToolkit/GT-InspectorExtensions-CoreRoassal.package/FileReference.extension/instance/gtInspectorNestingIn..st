*GT-InspectorExtensions-CoreRoassal
gtInspectorNestingIn: composite
	<gtInspectorPresentationOrder: 41>
	^ composite roassal2
		title: 'Nesting';
		initializeView: [ RTCircularTreeMapBuilder new ];
		painting: [ :b :presentation |
			b shape
				color: Color transparent;
				borderColor: Color lightGray;
				if: [ :f | f isFile ] color: (RTNIdentityNormalizer withCommand: [:f | f extension]).
			b
				leafWeight: [:f | f size sqrt ]; 
				explore: self
				nesting: #directories
				leaves: #files. ];
		send: #value;
		when: [self isDirectory and: [self hasChildren]]