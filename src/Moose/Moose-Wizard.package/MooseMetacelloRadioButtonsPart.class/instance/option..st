radio buttons model
option: aSymbol
	"Set the value of option"

	option := aSymbol.
	self
		changed: #isBranchDev;
		changed: #isMainDev;
		changed: #isRelease