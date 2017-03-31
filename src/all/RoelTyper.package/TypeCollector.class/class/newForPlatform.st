instance creation
newForPlatform
	"Return either a VWTypeCollector or a SqueakTypeCollector, depending on the platform used."

	^PharoTypeCollector basicNew