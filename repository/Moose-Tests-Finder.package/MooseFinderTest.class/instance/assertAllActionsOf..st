tests
assertAllActionsOf: group
	
	| allActionMorphs |

	group isEmpty ifTrue: [^ self ].
	allActionMorphs := self allActionMorphsIn: group mooseMenu.
	allActionMorphs 
		do: [ :action | self assertAction: action ]