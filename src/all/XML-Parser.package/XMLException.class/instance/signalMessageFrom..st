signaling
signalMessageFrom: anException
	self inheritMessageFrom: anException.
	^  self signal.