expressions
String
	$' == char ifFalse: [ ^ nil ].
	
	buf reset.
	
	[ 
	[ self next.
	char ifNil: [ self syntaxError ].
	$' == char ] whileFalse: [ buf nextPut: char ].
	$' == self next ] whileTrue: [ buf nextPut: char ].
	self tWHITESPACE.
	^ buf contents