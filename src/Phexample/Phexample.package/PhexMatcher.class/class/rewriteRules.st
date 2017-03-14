documentation
rewriteRules
	"Use this TreeRewriter to rewrite existing SUnit tests to Phexample.
	To run the rewrite rules open the following menu:
		Classlist -> refactor -> rewrite code.
	Copy paste the following code in and save it to execute the rewrite rules.
	"
	^RBParseTreeRewriter new
		replace: 'self assert: [ `@expression ]' with: 'self assert: `@expression';
		replace: 'self deny: `@expression' with: 'self assert: `@expression not';
		replace: 'self assert: `@value = `@expected' with: '`@value should equal: `@expected';
		replace: 'self assert: `@value ~= `@expected' with: '`@value should not equal: `@expected';
		replace: 'self assert: `@value > `@expected' with: '`@value should > `@expected';
		replace: 'self assert: `@value < `@expected' with: '`@value should < `@expected';
		replace: 'self assert: `@value >= `@expected' with: '`@value should >= `@expected';
		replace: 'self assert: `@value <= `@expected' with: '`@value should <= `@expected';
		replace: 'self assert: (`@value isKindOf: `@type)' with: '`@value should beKindOf: `@type';
		replace: 'self assert: `@expression isNil' with: '`@expression should be isNil';
		replace: 'self assert: `@expression notNil' with: '`@expression should be notNil';
		replace: 'self assert: `@expression `test not' with: '`@expression should not be `test'
			when: [:node | node arguments first receiver selector matchesRegex: '(is|has|not).+|atEnd' ];
		replace: 'self assert: `@expression `test' with: '`@expression should be `test'
			when: [:node | node arguments first selector matchesRegex: '(is|has|not).+|atEnd' ];
		replace: 'self assert: (`@collection includes: `@element) not' with: '`@collection should not be includes: `@element';
		replace: 'self assert: (`@collection includes: `@element)' with: '`@collection should be includes: `@element';
		yourself.
	
