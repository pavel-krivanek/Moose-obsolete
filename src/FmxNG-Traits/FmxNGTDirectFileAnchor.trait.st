Trait {
	#name : #FmxNGTDirectFileAnchor,
	#category : #'FmxNG-Traits-Traits'
}

{ #category : #meta }
FmxNGTDirectFileAnchor classSide >> annotation [

	<MSEClass: #TDirectFileAnchor super: #Trait>
	<generated>
	<package: #'FmxNG-Traits'>
	^self
]

{ #category : #generator }
FmxNGTDirectFileAnchor classSide >> generatedSlotNames [
	<generated>
	'FmxNGTDirectFileAnchor class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FmxNGTDirectFileAnchor classSide >> generatedTraitNames [
	<generated>
	^ #()
]

{ #category : #accessing }
FmxNGTDirectFileAnchor >> sourceText [
	(self startLine isNil and: [ self endLine isNil ]) ifTrue: [ ^ self completeText ].
	
	self sourcesAreReadable ifFalse: [ ^ '' ].
	
	^ self fileReference
		binaryReadStreamDo: [ :in | 
			String
				streamContents: [ :s | 
					[ FAMIXFileAnchorReader readStream: ((ZnCharacterReadStream on: (ZnBufferedReadStream on: in) encoding: self encoding)) for: self into: s ]
						on: MessageNotUnderstood
						do: [ self endLine: nil.
							s ] ] ]
]
