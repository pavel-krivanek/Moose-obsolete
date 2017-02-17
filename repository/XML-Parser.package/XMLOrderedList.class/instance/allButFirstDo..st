enumerating
allButFirstDo: aBlock
	"reimplemented for portability"
	2 to: collection size do: [:i |
		aBlock value: (collection at: i)]