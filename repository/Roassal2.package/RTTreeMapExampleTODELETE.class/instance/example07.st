examples
example07
	"
	self new example07
	"
	| b mt |
	b := RTTreeMapBuilder new.
	mt := TRPlatform current morphClass.
	b
		extent: 400@400;
		weight: 1;
		explore: mt
		using: #subclasses;
		depthShadedBorder.
	^ b