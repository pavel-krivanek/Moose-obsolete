filtering
withinPackage: aFAMIXPackage 

	^ self newObjectResultWith: (storage select: [ :obj | aFAMIXPackage == obj packageScope ])