public
lastVersionOf: packageName 
	"Return the most recent version of an .mcz file based on the packageName"
	
	| versions sortedNames |
	
	self assertPackageName: packageName.
	
	versions := self fileNames select: [ :f | f beginsWith: packageName , '-' ].
	
	sortedNames := versions asSortedCollection: 
		[ :v1 :v2 | 
		(v1 
			copyFrom: (v1 indexOf: $.) + 1
			to: (v1 lastIndexOf: $.)) asInteger < (v2 
				copyFrom: (v2 indexOf: $.) + 1
				to: (v2 lastIndexOf: $.)) asInteger ].
	sortedNames ifEmpty: [ self error: 'No file was found for ', packageName ].

	self assertMCZFileName: sortedNames last.
	^ sortedNames last