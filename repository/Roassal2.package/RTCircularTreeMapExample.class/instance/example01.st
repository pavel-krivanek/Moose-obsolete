sources
example01

	| b mt |
	b := RTCircularTreeMapBuilder new.
	b shape
		color: Color transparent.
	b
		baseradius: 200;
		weight: 1.
	mt := TRPlatform current morphClass.
	b explore: mt
		using: #subclasses.
	
	b build.
	^ b view