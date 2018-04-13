Class {
	#name : #FmxNGScopingEntity,
	#superclass : #FmxNGScopingEntityGenerated,
	#category : #'FmxNGCompatibility-Entities-Entities'
}

{ #category : #adding }
FmxNGScopingEntity >> addChildScope: aScopingEntity [ 
	childScopes add: aScopingEntity
]

{ #category : #adding }
FmxNGScopingEntity >> addGlobalVariable: aGlobalVariable [ 
	globalVariables add: aGlobalVariable
]

{ #category : #adding }
FmxNGScopingEntity >> belongsTo [
	^ self parentScope ifNil: [ self parentPackage ]
]

{ #category : #'moosechef-scoping-filtering' }
FmxNGScopingEntity >> methodScope [
	"This only makes sense to reject self loops in #collectAtScope:"

	^ self classes collectAsSet: [:c | c methods]
]

{ #category : #ui }
FmxNGScopingEntity >> mooseFinderChildrenTreeIn: composite [ 
	<moosePresentationOrder: 80>
	composite tree 
		titleIcon: MooseIcons mooseTree;
		title: 'Children tree';
		rootsExpanded;
		display: [:entity | {entity mooseInterestingEntity}];
		format: #name;
		children: [ :each | each structuralChildren sorted: [:entity1 :entity2 | entity1 name < entity2 name] ];
		icon: #mooseIcon
]

{ #category : #'moosechef-scoping-filtering' }
FmxNGScopingEntity >> typeScope [
	"This only makes sense to reject self loops in #collectAtScope:"
	^ self classes
]
