accessing
resolver
	^ resolver ifNil: [resolver := DTDExternalEntityResolver default]