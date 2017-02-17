*moose-core
mooseMenuMorph
	| menu pragmas submenus |
	menu := MenuMorph new.
	submenus := SmallDictionary new.
	pragmas := SmallDictionary new.

	"if multiple pragmas are declared for the same selector at different level of the hierarchy, 
	we only pick the bottom one (as picked by the dynamic lookup)"	
	self class withAllSuperclasses do: [ :eachClass | 
		(Pragma 
			allNamed: #menuItem:category:
			in: eachClass) do: [ :eachPragma | 
				pragmas at: eachPragma selector ifAbsentPut: [ eachPragma ].
				submenus at: (eachPragma argumentAt: 2) ifAbsentPut: [ MenuMorph new ]].
		(Pragma 
			allNamed: #menuItem:
			in: eachClass) do: [ :eachPragma | 
				pragmas at: eachPragma selector ifAbsentPut: [ eachPragma ]]
	].

	submenus keysAndValuesDo:  [:cat :smenu |
		menu add: cat asString subMenu: smenu ].
	(pragmas values asSortedCollection: [:a :b| a selector < b selector]) do: [ :eachPragma |
		(eachPragma arguments size = 2 )
			ifTrue: [ "Submenu item"
				(submenus at: (eachPragma argumentAt: 2))
					add: (eachPragma argumentAt: 1)
					target: [ self perform: eachPragma selector ]
					selector: #value 				
				]
			ifFalse: [ "Top level item"
				menu 
					add: (eachPragma argumentAt: 1)
					target: [ self perform: eachPragma selector ]
					selector: #value ]].
	^ menu