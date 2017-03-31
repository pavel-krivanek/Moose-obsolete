filtering
withinClass: aFAMIXClass 
	
	^ self newObjectResultWith: (storage select: [ :obj | aFAMIXClass == obj typeScope ])