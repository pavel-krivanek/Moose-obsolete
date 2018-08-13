queries - testing
isReferencedIn: anRGMethod 

	^ (anRGMethod ast variableNodes select: #isGlobal) anySatisfy: [ :each | each name = self name ] 