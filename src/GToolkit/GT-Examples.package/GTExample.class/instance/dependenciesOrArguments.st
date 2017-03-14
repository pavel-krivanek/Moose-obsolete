accessing-dynamic
dependenciesOrArguments
	^ self arguments collect: [ :each | each gtExample ifNil: [ each ] ]