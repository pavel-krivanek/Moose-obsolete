filtering
outOfNamespace: aFAMIXNamespace 

	^ self newObjectResultWith: (storage reject: [:obj | aFAMIXNamespace==obj namespaceScope])