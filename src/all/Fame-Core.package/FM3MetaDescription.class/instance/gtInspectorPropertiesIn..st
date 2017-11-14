ui
gtInspectorPropertiesIn: composite
	<gtInspectorPresentationOrder: 1>
	^ composite table
		title: [ self allPrimitiveAttributes size asString , ' Properties' translated ];
		display: [ self allPrimitiveAttributes ];
		sorted: [:attribute1 :attribute2 | attribute1 name < attribute2 name];
		column: 'name' evaluated: [:each | each name ] tags: [ :each :aFM3Class | 
					each mmClass ~= aFM3Class
						ifTrue: [ each mmClass name ]
						ifFalse: [ OrderedCollection new ] ];
		column: 'type' evaluated: [:each | each gtTypeString];
		column: 'derived?' evaluated: [ :each | each isDerived ] width: 50 ;
		when: [ self allComplexAttributes notEmpty ];
		morphicSelectionAct: [ :list | 
							Smalltalk tools browser 
								openOnClass: list selection mmClass implementingClass 
								selector: list selection implementingSelector ] 
							icon: GLMUIThemeExtraIcons glamorousBrowse 
							on: $b
							entitled: 'Browse implementation';
		morphicSelectionAct: [ :list | list selection inspect ] icon: Smalltalk ui icons glamorousInspect entitled: 'Inspect'