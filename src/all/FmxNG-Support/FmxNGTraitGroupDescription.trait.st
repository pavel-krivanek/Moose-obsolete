Trait {
	#name : #FmxNGTraitGroupDescription,
	#category : #'FmxNG-Support'
}

{ #category : #'as yet unclassified' }
FmxNGTraitGroupDescription classSide >> traitGroupOf: aTrait [

	| unresolved resolved |

	unresolved := IdentitySet new.
	resolved := IdentitySet new.
	unresolved add: aTrait.

	[	unresolved := unresolved copyWithoutAll: resolved.
		unresolved isEmpty ] whileFalse: [ 
			unresolved copy do: [ :trait |
				resolved add: trait.
				unresolved addAll: ((aTrait slots select: #isFMRelationSlot) collect: #targetClass) ] ].

	^ resolved.


]

{ #category : #'as yet unclassified' }
FmxNGTraitGroupDescription classSide >> viewOf: aTraitGroupMemeber [

	| b group slots |

	group := FmxNGTraitGroupDescription traitGroupOf: aTraitGroupMemeber.

	slots := Set new.
	group do: [ :aTrait |
	(aTrait slots select: #isFMRelationSlot) do: [ :aSlot |
			(slots includes: (aSlot inverseName asString -> aSlot name asString))
				ifFalse: [ slots add: (aSlot name asString -> aSlot inverseName asString) ]] ].
	
	b := RTUMLClassBuilder new.
	b
		instanceVariables: [:each | each slots collect: #name]";
		methodselector: #selector;
		methodsNames: #();
		attributeselector: #yourself".
	b attributeShape color: Color black.
	b methodShape color: Color black.
	b classNameShape color: Color black.
	b lineShape color: Color black.
	b boxShape borderColor: Color black.
	b
		layout packed.
		b addObjects: group.
		"treeLayout".
	b shape line
		color: Color blue;
		withHorizontalAttachPoint.
	b edgesDo: [ :edges | 
		group do: [ :each | 
			slots do: [ :aSlot |
				edges connectFrom: aSlot key to: aSlot value. ] ] ].
	^ b.
]
