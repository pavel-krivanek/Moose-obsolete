public
removeInteractionOfType: cls
	"Remove the interaction of type cls if present"
	interactions 
		detect: [ :anInt | anInt class == cls or: [ anInt class inheritsFrom: cls ] ] 
		ifFound: [ :int | interactions := interactions copyWithout: int ]

"	| int |
	(interactions anySatisfy: [ :anInt | anInt class == cls or: [ anInt class inheritsFrom: cls ] ])
		ifTrue: [ 
			int := interactions detect: [ :anInt | anInt class == cls ].
			interactions := interactions copyWithout: int ]"