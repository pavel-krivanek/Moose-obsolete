private
nextTreeElementsFrom: each
	^ tree at: each ifAbsent: [ #() ]