visiting
visitClass: fameClass 
	instVarNames := OrderedCollection new.
	initializeSource := String new writeStream.
	initializeSource nextPutAll: ('initialize<n><t>super initialize.' expandMacros).
	rbClass := self ensureClass: fameClass.
	self compileClassAnnotation: fameClass