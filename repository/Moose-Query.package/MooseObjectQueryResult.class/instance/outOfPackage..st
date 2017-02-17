filtering
outOfPackage: aFAMIXPackage 

	^ self newObjectResultWith: (storage reject: [ :obj | aFAMIXPackage == obj packageScope ])