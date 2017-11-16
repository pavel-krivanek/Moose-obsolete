Extension { #name : #ZnMultiPartFormDataEntity }

{ #category : #'*GT-InspectorExtensions-Core' }
ZnMultiPartFormDataEntity >> gtInspectorPartsIn: composite [
	<gtInspectorPresentationOrder: 5>
	^ composite fastList
		title: 'Parts';
		display: [ self parts ];
		when: [ self parts notEmpty ];
		yourself
]
