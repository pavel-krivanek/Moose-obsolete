groups
allModels 
	 "returns all known Models (be them MooseModels or of a subclass of it)"
	<navigation: 'All models'> 
	^self allWithSubTypesOf: MooseModel 