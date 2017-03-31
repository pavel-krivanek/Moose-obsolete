tests
testStreamProtocol
	context stream: 'hi there' asPetitStream.
	
	self assert: context position = 0.
	self assert: context peek = $h.
	self assert: context uncheckedPeek = $h.

	self assert: context next = $h.
	self assert: context peek = $i.
	self assert: context uncheckedPeek = $i.
	self assert: context position = 1.
	
	context skip: 2.
	self assert: context position = 3.
	self assert: context peek = $t.
	self assert: context atEnd not.
	
	self assert: (context next: 5) = 'there'.
	self assert: context position = 8.
	self assert: context atEnd.