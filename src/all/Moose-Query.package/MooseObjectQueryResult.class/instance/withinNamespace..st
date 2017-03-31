filtering
withinNamespace: aFAMIXNamespace 

	^ self newObjectResultWith: (storage select: [:obj | aFAMIXNamespace==obj namespaceScope])