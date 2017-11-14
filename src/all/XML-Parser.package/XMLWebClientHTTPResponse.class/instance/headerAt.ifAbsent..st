accessing
headerAt: aKey ifAbsent: aBlock
	^ self webClientResponse
		headerAt: aKey
		ifAbsent: aBlock