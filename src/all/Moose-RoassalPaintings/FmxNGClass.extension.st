Extension { #name : #FmxNGClass }

{ #category : #'*Moose-RoassalPaintings' }
FmxNGClass >> inheritedClasses [
	
	self flag: #fixme.
	^ #()
]

{ #category : #'*Moose-RoassalPaintings' }
FmxNGClass >> inheritedClassesOutOfMyPackage [
	
	self flag: #fixme.
	^ #()
]

{ #category : #'*Moose-RoassalPaintings' }
FmxNGClass >> sureInvokedClasses [
	
	self flag: #fixme.
	^ self queryAllOutgoingInvocations opposites
]

{ #category : #'*Moose-RoassalPaintings' }
FmxNGClass >> sureInvokedClassesInto: aFAMIXPackage [ 
	
	self flag: #fixme.
	^ self sureInvokedClasses
]

{ #category : #'*Moose-RoassalPaintings' }
FmxNGClass >> sureInvokingClasses [
	
	self flag: #fixme.
	^ self queryAllIncomingInvocations opposites
]

{ #category : #'*Moose-RoassalPaintings' }
FmxNGClass >> sureInvokingClassesInto: aFAMIXPackage [ 
	
	self flag: #fixme.
	^ self sureInvokingClasses
]
