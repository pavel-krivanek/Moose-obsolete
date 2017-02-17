accessing
parserInstance
	| expression parens number |
	expression := PPExpressionParser new.
	parens := $( asParser trim , expression , $) asParser trim
		==> [ :value | value second ].
	number := (#digit asParser plus , ($. asParser , #digit asParser plus) optional) flatten trim
		==> [ :value | value asNumber ].
	expression term: parens / number.
	expression
		group: [ :g |
			g prefix: $- asParser trim do: [ :op :a | a negated ] ];
		group: [ :g |
			g postfix: '++' asParser trim do: [ :a :op | a + 1 ].
			g postfix: '--' asParser trim do: [ :a :op | a - 1 ] ];
		group: [ :g |
			g right: $^ asParser trim do: [ :a :op :b | a raisedTo: b ] ];
		group: [ :g |
			g left: $* asParser trim do: [ :a :op :b | a * b ].
			g left: $/ asParser trim do: [ :a :op :b | a / b ] ];
		group: [ :g |
			g left: $+ asParser trim do: [ :a :op :b | a + b ].
			g left: $- asParser trim do: [ :a :op :b | a - b ] ].
	^ expression end