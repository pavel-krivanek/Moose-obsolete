*Moose-SmalltalkImporter-nocheckAdding
nocheckAdd: anElement 
	slot noCheckAdd: anElement to: owner.
	self unsafeAdd: anElement.
	^ anElement