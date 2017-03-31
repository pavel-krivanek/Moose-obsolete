opening
openOn: aMetamodel 
	"
		self new openOn: MooseModel meta.
		
		self new openOn: FMMetaRepository fm3.
	"
	^ self viewFameClasses: aMetamodel classes