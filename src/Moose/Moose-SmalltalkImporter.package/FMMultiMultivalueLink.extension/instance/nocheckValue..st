*Moose-SmalltalkImporter-nocheckAdding
nocheckValue: aCollection 
	^ self
		removeAll: values copy;
		nocheckAddAll: aCollection