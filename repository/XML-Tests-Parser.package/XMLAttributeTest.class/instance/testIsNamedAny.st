tests
testIsNamedAny
	| attribute |

	(attribute := self newNode) name: 'one'.
	self
		assert: (attribute isNamedAny: #('two' 'one' 'three') asSet);
		deny: (attribute isNamedAny: #('two' 'three') asSet).

	attribute name: 'one:two'.
	self
		assert: (attribute isNamedAny: #('one' 'one:two' 'three'));
		assert: (attribute isNamedAny: #('one' 'two' 'three'));
		deny: (attribute isNamedAny: #('one' 'three')).