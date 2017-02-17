private-accessing
classNameFromMethod
	"this is a hack but it's working - doru :)"

	"cls :=  self methodEntity belongsTo.
	^ cls isInstanceSide
		ifTrue: [self methodEntity belongsTo name]
		ifFalse: [self methodEntity belongsTo name , ' class']."

	^  self methodEntity belongsTo name.
	
		