appending/prepending
append: aStringOrStringNode
	string :=
		string
			ifNil: [aStringOrStringNode asString]
			ifNotNil: [string, aStringOrStringNode asString]