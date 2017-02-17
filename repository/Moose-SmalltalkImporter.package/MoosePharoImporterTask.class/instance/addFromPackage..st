adding
addFromPackage: aRPackage

	| packageDesc |
	"late-bound cache initialization for classes"
	"PackageOrganizerCache default addClassesFromPackage: aPackageInfo.
	packageDesc := PackageOrganizerCache default packageFor: aPackageInfo."
	"SIMD 23/11/2009: We reject trait as entities to import for now."
	self addClasses: aRPackage regularClasses.
	self addClassExtensions: aRPackage regularClassExtensions
	