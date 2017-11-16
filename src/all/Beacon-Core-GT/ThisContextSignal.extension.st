Extension { #name : #ThisContextSignal }

{ #category : #'*Beacon-Core-GT' }
ThisContextSignal class >> gtExampleMethodStackSignal [
	<gtExample>
	<label: 'MethodStackSignal'>
	
	^ MethodStackSignal new
]

{ #category : #'*Beacon-Core-GT' }
ThisContextSignal >> gtInspectorStackIn: composite [
	<gtInspectorPresentationOrder: 0>
	composite list 
		title: 'Stack';
		display: [ self stack ]
]
