enumerating
headerValuesAt: aKey do: aBlock
	self webClientResponse
		headersAt: aKey
		do: aBlock