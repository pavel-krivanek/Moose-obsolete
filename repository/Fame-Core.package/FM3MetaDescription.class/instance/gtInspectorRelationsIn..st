ui
gtInspectorRelationsIn: composite
	<gtInspectorPresentationOrder: 0>
	composite table
		title: [ self allComplexAttributes size asString , ' Relations' translated ];
		display: [ self allComplexAttributes ];
		sorted: [ :attribute1 :attribute2 | attribute1 name < attribute2 name ];
		column: 'name'
			evaluated: [ :each | each name ]
			tags: [ :each :aFM3Class | 
			each mmClass ~= aFM3Class
				ifTrue: [ each mmClass name ]
				ifFalse: [ OrderedCollection new ] ];
		column: 'type' evaluated: [ :each | each gtTypeString ];
		column: 'opposite'
			evaluated: [ :each | each opposite ifNil: [ '' ] ifNotNil: [ :opposite | opposite name ] ];
		column: 'derived?' evaluated: [ :each | each isDerived ] width: 50 ;
		column: 'container?' evaluated: [ :each | each isContainer ] width: 50;
		when: [ self allComplexAttributes notEmpty ];
		selectionPopulate: #selection
			on: $o
			entitled: 'Open opposite'
			with: [ :list | list selection opposite ];
		morphicSelectionAct: [ :list | 
				Smalltalk tools browser
					openOnClass: list selection mmClass implementingClass
					selector: list selection implementingSelector ]
			icon: GLMUIThemeExtraIcons glamorousBrowse
			on: $b
			entitled: 'Browse implementation';
		morphicSelectionAct: [ :list | list selection inspect ]
			icon: GLMUIThemeExtraIcons glamorousInspect
			on: $i
			entitled: 'Inspect'