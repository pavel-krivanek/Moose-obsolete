examples
example06
	"
	self new example06
	"
	| b mt |
	b := RTTreeMapBuilder new.
	b shape 
		if: [ :m| Smalltalk includesKey: (m name,'Test') asSymbol ] fillColor: Color lightGreen;
		if: [ :m| m hasAbstractMethods ] fillColor: Color red;
		borderWidth: 2.
	
	b
		extent: 400@400;
		weight: 1.
	mt := TRPlatform current morphClass.
	b explore: mt
		using: #subclasses.
	b withShadedFramesFromColor: Color gray toColor: Color red.
	b elements do: [ :e | e when: TRMouseClick do: [ :evt | e model inspect ] ].
	
	^ b