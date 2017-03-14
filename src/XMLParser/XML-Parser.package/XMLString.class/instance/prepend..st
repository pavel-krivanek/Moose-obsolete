appending/prepending
prepend: aStringOrStringNode
	string :=
		string
			ifNil: [aStringOrStringNode asString]
			ifNotNil: [aStringOrStringNode asString, string]