*Moose-SmalltalkImporter
nocheckValue: aCollection 
	^ self
		removeAll: values copy;
		nocheckAddAll: aCollection