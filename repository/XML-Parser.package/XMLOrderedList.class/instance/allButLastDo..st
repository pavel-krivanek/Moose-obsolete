enumerating
allButLastDo: aBlock
	"reimplemented for portability"
	1 to: collection size - 1 do: [:i |
		aBlock value: (collection at: i)]