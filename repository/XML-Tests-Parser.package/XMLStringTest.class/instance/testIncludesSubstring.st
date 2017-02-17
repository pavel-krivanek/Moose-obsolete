tests
testIncludesSubstring
	| stringNode |

	stringNode := self newNode.
	self
		assert: (stringNode includesSubstring: '');
		assert: (stringNode includesSubstring: (self nodeClass string: ''));
		deny: (stringNode includesSubstring: 'one');
		deny: (stringNode includesSubstring: (self nodeClass string: 'one')).
	stringNode prepend: 'one'.
	self
		assert: (stringNode includesSubstring: 'one');
		assert: (stringNode includesSubstring: (self nodeClass string: 'one')).

	self
		deny: (stringNode includesSubstring: 'three');
		deny: (stringNode includesSubstring: (self nodeClass string: 'three')).
	stringNode append: 'three'.
	self
		assert: (stringNode includesSubstring: 'three');
		assert: (stringNode includesSubstring: (self nodeClass string: 'three')).

	self
		deny: (stringNode includesSubstring: 'two');
		deny: (stringNode includesSubstring: (self nodeClass string: 'two')).
	stringNode replaceFrom: 4 to: 3 with: 'two'.
	self
		assert: (stringNode includesSubstring: 'two');
		assert: (stringNode includesSubstring: (self nodeClass string: 'two')).

	self
		assert: (stringNode includesSubstring: '');
		assert: (stringNode includesSubstring: (self nodeClass string: '')).