Extension { #name : #GTInspector }

{ #category : #'*GT-InspectorExtensions-CoreRoassal' }
GTInspector class >> gtInspectorExtensionsMapIn: composite [
	<gtInspectorPresentationOrder: 50>
	composite roassal2
		title: 'GT extensions map';
		initializeView: [ RTCircularTreeMapBuilder new ];
		painting: [ :b |
			b
				color: [ : each | 
					each isClassOrTrait 
						ifTrue: [ 
							((Pragma allNamed: #gtInspectorPresentationOrder: in: each) isEmpty 
								and: [ (Pragma allNamed: #spotterOrder: in: each) isEmpty ]) 
								ifTrue: [ Color lightGray alpha: 0.5 ]
								ifFalse: [ Color red ] ] 
						ifFalse: [ Color transparent ]];
				borderColor: Color gray; 
				baseradius: 500;
				leafWeight: [ :each | each methods size ].
			b 
				from: RPackageOrganizer default packages
				nesting: [ :each | 
					(each isKindOf: RPackage)
						ifTrue: [ each classTags ]
						ifFalse: [ {  } ] ]
				leaves: [ :each |
					(each isKindOf: RPackage)
						ifTrue: [ { } ]
						ifFalse: [ each classes ] ].
			b build view canvas camera focusOnCenterScaled.
			b ]
]
