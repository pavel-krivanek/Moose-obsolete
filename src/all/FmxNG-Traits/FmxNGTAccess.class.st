Class {
	#name : #FmxNGTAccess,
	#superclass : #FmxNGTAccessGenerated,
	#category : #'FmxNG-Traits'
}

{ #category : #accessing }
FmxNGTAccess >> isWrite [

	<MSEProperty: #isWrite type: #Boolean>
	<MSEComment: 'Write access'>
	^ isWrite ifNil: [ false ]
]
