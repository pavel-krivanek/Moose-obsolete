*PetitIndent
aligns
	"Return if the current column is the same as set by #setIl"
	^ (#top asParser)
		"JK: hackish, because of imprefect Push/Pop analysis"
		propertyAt: #changesContext put: false;
		yourself