instance creation
new
	"Override new to return either a VWTypeCollector or a SqueakTypeCollector"

	^self newForPlatform