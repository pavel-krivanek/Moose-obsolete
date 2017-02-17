filtering
outOfClass: aFAMIXClass 
	
	^ self newObjectResultWith: (storage reject: [ :obj | aFAMIXClass == obj typeScope ])