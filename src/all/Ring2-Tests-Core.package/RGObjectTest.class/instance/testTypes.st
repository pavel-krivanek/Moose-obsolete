tests
testTypes

	"check all testing methods"

	| def | 
	
	def := RGObject new.
	
	self deny: def isComment.
	self deny: def isEnvironment.
	self deny: def isGlobalVariable.
	self deny: def isLayout.
	self deny: def isMethod.
	self deny: def isPackage.
	self deny: def isSlot.
	self deny: def isTraitComposition.
	self deny: def isTraitTransformation.
	self deny: def isVariable.
	self deny: def isSlot.
	self deny: def isClass.
	self deny: def isMetaclass.
	self deny: def isMetaclassTrait.
	self deny: def isProtocol.
	self deny: def isTraitAlias.
	self deny: def isTraitComposition.
	self deny: def isTraitExclusion.
	self deny: def isTraitTransformation.
	self deny: def isVariableDefinition.
