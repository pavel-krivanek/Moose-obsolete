constants
string

	string isNil ifTrue: [ 
		string := self stringClass basicNew.
		string initialize.
		string name: #String.
		"FM3String beImmutable" ].
	^string