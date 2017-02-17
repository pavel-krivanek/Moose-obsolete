*XML-Parser
xmlSeparators
	^ String
		with: 32 asCharacter "space"
		with: 10 asCharacter "lf"
		with: 9 asCharacter "tab"
		with: 13 asCharacter "cr"