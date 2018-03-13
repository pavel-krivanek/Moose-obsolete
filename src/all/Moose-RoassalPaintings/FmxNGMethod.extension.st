Extension { #name : #FmxNGMethod }

{ #category : #'*Moose-RoassalPaintings' }
FmxNGMethod >> classBlueprintFillColor [
	
	self isPureAccessor ifTrue: [ ^ Color orange].
	
	self isSetter ifTrue: [ ^ Color red].

	self isGetter ifTrue: [ ^ Color orange].

	self isAbstract ifTrue: [ ^ Color cyan].

	self isOverriding ifTrue: [ ^ Color brown].

	self isConstant ifTrue: [ ^ Color gray].
	
	^ Color white.
]

{ #category : #'*Moose-RoassalPaintings' }
FmxNGMethod >> sureInvokedClasses [
	
	self flag: #fixme.
	^ #()
]
