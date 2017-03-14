statements-elements
expression
	"Complete implementation of http://www.sqlite.org/lang_expr.html"

	^  PPSQLiteExpressionParser new
		term: expressionTerm;
		group: [ :g |
			g prefix: '-' do: [ :op :a | { op. a } ].
			g prefix: '+' do: [ :op :a | { op. a } ].
			g prefix: '~' do: [ :op :a | { op. a } ].
			"g prefix: ':' do: [ :op :a | { op. a } ]."
			g prefix: 'NOT ' do: [ :op :a | { op. a } ] ];
		group: [ :g |
			g left: '||' asPParser trim do: [ :a :op :b | { a. op. b } ] ];
		group: [ :g |
			g left: '*' asPParser trim do: [ :a :op :b | { a. op. b } ].
			g left: '/' asPParser trim do: [ :a :op :b | { a. op. b } ].
			g left: '%' asPParser trim do: [ :a :op :b | { a. op. b } ] ];
		group: [ :g |
			g left: '+' asPParser trim do: [ :a :op :b | { a. op. b } ].
			g left: '-' asPParser trim do: [ :a :op :b | { a. op. b } ] ];
		group: [ :g |
			g left: '<<' asPParser trim do: [ :a :op :b | { a. op. b } ].
			g left: '>>' asPParser trim do: [ :a :op :b | { a. op. b } ].
			g left: '&' asPParser trim do: [ :a :op :b | { a. op. b } ].
			g left: '|' asPParser trim do: [ :a :op :b | { a. op. b } ] ];
		group: [ :g |
			g left: '==' asPParser trim do: [ :a :op :b | { a. op. b } ].
			g left: '!=' asPParser trim do: [ :a :op :b | { a. op. b } ].
			g left: '=' asPParser trim do: [ :a :op :b | { a. op. b } ].
			g left: '<>' asPParser trim do: [ :a :op :b | { a. op. b } ].
			g left: '<=' asPParser trim do: [ :a :op :b | { a. op. b } ].
			g left: '>=' asPParser trim do: [ :a :op :b | { a. op. b } ].
			g left: '<' asPParser trim do: [ :a :op :b | { a. op. b } ].
			g left: '>' asPParser trim do: [ :a :op :b | { a. op. b } ]. ];
		group: [ :g |
			g left: 'IS NOT ' asPParser caseInsensitive trim do: [ :a :op :b | { a. op. b } ].
			g left: 'IS ' asPParser caseInsensitive trim do: [ :a :op :b | { a. op. b } ].
			g left: 'IN ' asPParser caseInsensitive trim do: [ :a :op :b | { a. op. b } ].
			g left: 'LIKE ' asPParser caseInsensitive trim do: [ :a :op :b | { a. op. b } ].
			g left: 'GLOB ' asPParser caseInsensitive trim do: [ :a :op :b | { a. op. b } ].
			g left: 'MATCH ' asPParser caseInsensitive trim do: [ :a :op :b | { a. op. b } ].
			g left: 'REGEXP ' asPParser caseInsensitive trim do: [ :a :op :b | { a. op. b } ] ];
		group: [ :g |
			g left: 'AND ' asPParser caseInsensitive trim do: [ :a :op :b | { a. op. b } ] ];
		group: [ :g |
			g left: 'OR ' asPParser caseInsensitive trim do: [ :a :op :b | { a. op. b } ] ];
		group: [ :g | "Add here the extra functions "
			g prefix: 'NOT EXISTS' asPParser caseInsensitive trim do: [ :op :b | { op. b } ].
			g prefix: 'EXISTS' asPParser caseInsensitive trim do: [ :op :b | { op. b } ].
			g prefix: 'COUNT' asPParser caseInsensitive trim do: [ :op :b | { op. b } ].
			g prefix: 'TRIM' asPParser caseInsensitive trim do: [ :op :b | { op. b } ]. ];
		yourself