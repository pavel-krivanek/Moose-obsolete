enumerating
with: aCollection do: aBlock
	1 to: (collection size min: aCollection size) do: [:i |
		aBlock
			value: (collection at: i)
			value: (aCollection at: i)]