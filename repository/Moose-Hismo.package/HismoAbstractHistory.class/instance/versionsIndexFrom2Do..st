enumerating
versionsIndexFrom2Do: aBlock
	"traverses the versions starting from the second version and executes aBlock by providing the index of the version"
	
	2
		to: versions size
		do: [:i | aBlock value: i]