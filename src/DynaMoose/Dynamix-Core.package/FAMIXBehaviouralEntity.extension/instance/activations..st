*Dynamix-Core
activations: aCollection
	^ (self privateState attributeAt: #activations ifAbsent: [nil]) value: aCollection 