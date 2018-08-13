as yet unclassified
realMethodFor: anRGMethod

	"TODO: should we cache the definition?"
	^ ((self realBehaviorFor: anRGMethod parent) >> anRGMethod selector)
	
