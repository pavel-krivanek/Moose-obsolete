public interface
changedPropertyNamed: aVersionProperty
	"returns true is aVersionProperty changed as compared with the previous version"
	
	^self previousVersion isNil not
		and:
			[(self previousVersion propertyNamed: aVersionProperty)
				~= (self propertyNamed: aVersionProperty)]