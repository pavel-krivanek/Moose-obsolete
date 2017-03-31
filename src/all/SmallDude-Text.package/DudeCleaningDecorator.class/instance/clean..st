actions
clean: aStringList 
	 
	| newStr | 
	newStr := self specificClean: aStringList. 
	nextComponent ~= nil ifTrue: [^nextComponent clean: newStr]. 
	^newStr