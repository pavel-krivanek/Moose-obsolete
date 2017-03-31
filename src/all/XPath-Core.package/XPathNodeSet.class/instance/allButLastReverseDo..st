private
allButLastReverseDo: aBlock
	collection size - 1 to: 1 by: -1 do: [:i |
		aBlock value: (collection at: i)]