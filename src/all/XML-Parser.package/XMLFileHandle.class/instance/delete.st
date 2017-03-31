deleting
delete
	self exists
		ifFalse: [self errorFileDoesNotExist].

	[self basicDelete]
		on: Error
		do: [:error | XMLFileException signalMessageFrom: error].