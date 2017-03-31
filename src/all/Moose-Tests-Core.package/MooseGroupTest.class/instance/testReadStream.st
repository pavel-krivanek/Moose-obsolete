tests
testReadStream

	| group el1 el2 el3 v stream |
	group := MooseGroup new.
	group add: (el1 := MooseEntity new).
	group add: el1.
	group add: (el2 := MooseEntity new).
	group add: (el3 := MooseEntity new).

	stream := group readStream.
	self assert: stream isStream.
	self assert: (stream next == el1).
	self assert: (stream next == el1).
	self assert: (stream next == el2).
	self assert: (stream next == el3).

