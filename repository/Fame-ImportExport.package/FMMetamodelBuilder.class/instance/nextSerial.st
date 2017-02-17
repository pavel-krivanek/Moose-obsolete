private
nextSerial
	| name |
	name := String new writeStream.
	stack do: [ :each | name nextPutAll: each ] separatedBy: [ name nextPut: $. ].
	^self lookupSerial: name contents.