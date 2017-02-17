examples
example03
	"
	self new example03
	"
	| b mt |
	b := RTTreeMapBuilder new.
	b shape 
		if: [ :m| Smalltalk includesKey: (m name,'Test') asSymbol ] fillColor: Color lightGreen;
		if: [ :m| m hasAbstractMethods ] fillColor: Color red.
	
	b
		extent: 400@400;
		weight: 1.
	mt := TRPlatform current morphClass.
	b explore: mt
		using: #subclasses.
	b elements do: [ :e | e when: TRMouseClick do: [ :evt | e model inspect ] ].
	^ b