*Moose-RoassalPaintings-Support
fanType

	^ self externalFanin >= self internalFanin
			ifTrue: [
				self externalFanout >= self internalFanout
					ifTrue: [#eFieFo]
					ifFalse: [#eFiiFo]]
			ifFalse: [
				self externalFanout >= self internalFanout
					ifTrue: [#iFieFo]
					ifFalse: [#iFiiFo]]