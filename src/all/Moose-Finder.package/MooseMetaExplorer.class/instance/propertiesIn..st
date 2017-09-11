private
propertiesIn: a
	^ a table
		title: [ :aFM3Class | aFM3Class allPrimitiveAttributes size asString , ' Properties' translated ];
		display: [ :aFM3Class | aFM3Class allPrimitiveAttributes ];
		sorted: [ :attribute1 :attribute2 | attribute1 name < attribute2 name ];
		column: 'name'
			evaluated: [ :each | 
			each compiledMethod isNil
				ifTrue: [ each name ]
				ifFalse: [ each compiledMethod isDeprecated
						ifTrue: [ each name asText addAttribute: TextEmphasis struckOut ]
						ifFalse: [ each name ] ] ]
			tags: [ :each :aFM3Class | 
				each mmClass ~= aFM3Class
					ifTrue: [ each mmClass name ]
					ifFalse: [ OrderedCollection new ] ];
		column: 'type'
			evaluated: [ :each | 
			each type name
				,
					(each isMultivalued
						ifTrue: [ ' *' ]
						ifFalse: [ '' ])
				,
					(each isDerived
						ifTrue: [ ' /' ]
						ifFalse: [ '' ]) ];
		morphicSelectionAct: [ :list | Smalltalk tools browser openOnClass: list selection mmClass implementingClass selector: list selection implementingSelector ]
			icon: GLMUIThemeExtraIcons glamorousBrowse
			on: $b
			entitled: 'Browse implementation';
		morphicSelectionAct: [ :list | list selection inspect ] icon: MooseIcons mooseInspect entitled: 'Inspect'