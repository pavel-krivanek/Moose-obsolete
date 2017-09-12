pragmas
findClasses

	"return dictionary of classes that should be managed. Use traits as values"
	
	^ #statefulTraits pragmas collect: [ :pragma | 
		pragma method methodClass instanceSide -> (pragma method methodClass instanceSide perform: pragma method selector )].