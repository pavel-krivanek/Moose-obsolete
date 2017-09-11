private
methodsIn: a
	a table
		title: [ :aFM3Class | aFM3Class implementingClass methods size asString , ' Methods' translated ];
		display: [ :aFM3Class | aFM3Class implementingClass methods ];
		sorted: [ :attribute1 :attribute2 | attribute1 name < attribute2 name ];
		column: 'name'
			evaluated: [ :each | 
			each compiledMethod isNil
				ifTrue: [ each name ]
				ifFalse: [ each compiledMethod isDeprecated
						ifTrue: [ each name asText addAttribute: TextEmphasis struckOut ]
						ifFalse: [ each selector ] ] ]
			tags: [ :each :aFM3Class | 
				each methodClass ~= aFM3Class
					ifTrue: [ each methodClass name ]
					ifFalse: [ OrderedCollection new ] ];
		"column: 'input type'
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
		column: 'return type' evaluated: [ :each | each opposite ifNil: [ '' ] ifNotNil: [ :opposite | opposite name ] ];
		"
			selectionPopulate: #strongSelection
			on: $o
			entitled: 'Open'
			with: [ :list | list selection opposite ];
		morphicSelectionAct: [ :list | Smalltalk tools browser openOnClass: list selection mmClass implementingClass selector: list selection implementingSelector ]
			icon: GLMUIThemeExtraIcons glamorousBrowse
			on: $b
			entitled: 'Browse implementation';
		morphicSelectionAct: [ :list | list selection inspect ]
			icon: GLMUIThemeExtraIcons glamorousInspect
			on: $i
			entitled: 'Inspect';
		morphicSelectionAct: [ :list | list selection explore ]
			icon: GLMUIThemeExtraIcons glamorousInspect
			on: $I
			entitled: 'Explore'