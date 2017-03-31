tests
testPrintOn
	| group stream |
	group := self model allTypes.
	stream := WriteStream on: String new.
	group printOn: stream.
	self assert: stream contents equals: 'All types (' , self model allTypes size asString , ' FAMIXTypes)'