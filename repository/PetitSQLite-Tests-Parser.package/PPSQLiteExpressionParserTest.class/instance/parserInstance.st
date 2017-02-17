accessing
parserInstance
	| expression parens number |
	expression := PPSQLiteExpressionParser new.
	parens := $( asPParser trim , expression , $) asPParser trim
		name: 'parens';
		==> [ :value | value second ].
	number := (#digit asPParser plus , ($. asPParser , #digit asPParser plus) optional) flatten trim
		name: 'number';
		==> [ :value | value asNumber ].
	expression term: parens / number.
	expression
		group: [ :g |
			g prefix: $- asPParser trim do: [ :op :a | a negated ] ];
		group: [ :g |
			g postfix: '++' asPParser trim do: [ :a :op | a + 1 ].
			g postfix: '--' asPParser trim do: [ :a :op | a - 1 ] ];
		group: [ :g |
			g right: $^ asPParser trim do: [ :a :op :b | a raisedTo: b ] ];
		group: [ :g |
			g left: $* asPParser trim do: [ :a :op :b | a * b ].
			g left: $/ asPParser trim do: [ :a :op :b | a / b ] ];
		group: [ :g |
			g left: $+ asPParser trim do: [ :a :op :b | a + b ].
			g left: $- asPParser trim do: [ :a :op :b | a - b ] ].
	^ expression end