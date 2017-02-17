grammar - if-then-else
ifPart
	^ 'if' asParser, space, identifier ==> #third