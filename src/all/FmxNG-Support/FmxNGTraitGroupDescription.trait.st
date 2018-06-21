Trait {
	#name : #FmxNGTraitGroupDescription,
	#category : #'FmxNG-Support'
}

{ #category : #'as yet unclassified' }
FmxNGTraitGroupDescription classSide >> add: aTraitGroupMemeber to: aView [

	| group slots |

	group := FmxNGTraitGroupDescription traitGroupOf: aTraitGroupMemeber.

	slots := Set new.
	group do: [ :aTrait |
	(aTrait slots select: #isFMRelationSlot) do: [ :aSlot |
			(slots includes: (aSlot inverseName asString -> aSlot name asString))
				ifFalse: [ slots add: (aSlot name asString -> aSlot inverseName asString) ]] ].
	
	aView
		instanceVariables: [:each | each slots collect: #name]";
		methodselector: #selector;
		methodsNames: #();
		attributeselector: #yourself".
	aView attributeShape color: Color black.
	aView methodShape color: Color black.
	aView classNameShape color: Color black.
	aView lineShape color: Color black.
	aView boxShape borderColor: Color black.
	aView
		layout packed.
		aView addObjects: group.
		"treeLayout".
	aView shape line
		color: Color blue;
		withHorizontalAttachPoint.
	aView edgesDo: [ :edges | 
		group do: [ :each | 
			slots do: [ :aSlot |
				edges connectFrom: aSlot key to: aSlot value. ] ] ].
	^ aView.
]

{ #category : #'as yet unclassified' }
FmxNGTraitGroupDescription classSide >> groupRepresentatives [

	| allTraits representatives grouped |
	
	allTraits := 'FmxNG-Traits' asPackage definedClasses select: #isTrait.
	representatives := Set new.
	grouped := Set new.
	
	allTraits do: [ :each |
		(grouped includes: each) ifFalse: [ 
			representatives add: each.
			grouped addAll: (self traitGroupOf: each) ]].
	
	^ representatives asSortedCollection: [ :a :b | a name <= b name ]
	
	
]

{ #category : #'as yet unclassified' }
FmxNGTraitGroupDescription classSide >> openGroupsBrowser [

	| data browser |
	
	<script>
	
	data := FmxNGTraitGroupDescription groupRepresentatives.

	"Display result in Glamorous Browser"
	browser := GLMTabulator new.
	browser 
		column: #yourself;
		column: #diff.
	browser transmit to: #yourself.
	browser transmit to: #diff; from: #yourself; andShow: [ :a | 
			a roassal2 
				initializeView: [ RTUMLClassBuilder new ];
				painting: [ :view :input | 
					FmxNGTraitGroupDescription add: input to: view.
				 ] ].
	browser openOn: data.
	

]

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

	| aView |
	
	aView := RTUMLClassBuilder new.
	^ self add: aTraitGroupMemeber to: aView

]
