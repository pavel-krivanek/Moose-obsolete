*Moose-Finder
mooseFinderActions
	| categorized simple all first second |
	all := self class withAllSuperclasses
		flatCollect: [ :eachClass | 
			categorized := (Pragma allNamed: #menuItem:category: in: eachClass)
				collect: [ :eachPragma | 
					GLMGenericAction new
						action: [ :x | self perform: eachPragma methodSelector ];
						title: (eachPragma argumentAt: 1);
						category: (eachPragma argumentAt: 2) ].
			simple := (Pragma allNamed: #menuItem: in: eachClass)
				collect: [ :eachPragma | 
					GLMGenericAction new
						action: [ :x | self perform: eachPragma selector ];
						title: (eachPragma argumentAt: 1) ].
			categorized , simple ].
	^ all
		asSortedCollection: [ :a :b | 
			first := a isCategorized
				ifTrue: [ a category , a title ]
				ifFalse: [ a title ].
			second := b isCategorized
				ifTrue: [ b category , b title ]
				ifFalse: [ b title ].
			first < second ]