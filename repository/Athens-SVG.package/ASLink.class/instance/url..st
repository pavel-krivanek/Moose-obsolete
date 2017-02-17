accessing
url: aString
	url := aString.
	
	isId := url first = $#.
	isId ifTrue: [ id := url allButFirst ]