*Moose-RoassalPaintings-Support
interfaceMethods
	^ self methods select: [:each | each isInternalImplementation not & each isInitializer not & each isPureAccessor not]