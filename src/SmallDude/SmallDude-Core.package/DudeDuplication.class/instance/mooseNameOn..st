printing
mooseNameOn: stream
	stream nextPutAll: 'Chain: '.
	signature ifNotNil: [ stream nextPutAll: signature ].
	referenceCode ifNotNil: [ stream nextPutAll: referenceCode mooseName ].
	stream nextPutAll: ' - '.
	duplicateCode ifNotNil: [ stream nextPutAll: duplicateCode mooseName ]