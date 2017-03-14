initialize-release
initialize 
	super initialize. 
	methods := IdentityDictionary new. 
	classes := IdentityDictionary new. 
	namespaces := IdentityDictionary new. 
	packages := IdentityDictionary new. 
	globals := Dictionary new. 
	others := OrderedCollection new. 
	scopes := IdentityDictionary new.
	implicitVariables := IdentityDictionary new.
	annotationTypes := IdentityDictionary new