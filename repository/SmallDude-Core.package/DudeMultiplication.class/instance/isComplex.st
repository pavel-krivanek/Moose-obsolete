testing
isComplex
	"A multiplication is complex if it has more than one duplication, or 
	if at least one entity also participates in another multiplication"
	^ (self duplications size > 1) or: [
		self multiplyingEntities anySatisfy: [:entity |
			entity allMultiplications size > 1 ]] 