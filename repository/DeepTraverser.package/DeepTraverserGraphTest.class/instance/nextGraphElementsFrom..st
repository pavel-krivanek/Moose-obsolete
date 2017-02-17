private
nextGraphElementsFrom: each
	^ graph at: each ifAbsent: [ #() ]