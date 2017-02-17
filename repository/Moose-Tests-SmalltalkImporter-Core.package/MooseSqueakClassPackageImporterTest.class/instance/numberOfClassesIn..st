testing collecting classes
numberOfClassesIn: categories

	"SIMD 23/11/2009: We reject trait as entities to importer for now."
	^ (SystemOrganization categories select: [ :each | categories anySatisfy: [:c | c match: each]]) 
		inject: 0
		into: [ :sum :each | sum + ((SystemOrganization classesInCategory: each)
																		reject: [:cls | cls isTrait]) size ]