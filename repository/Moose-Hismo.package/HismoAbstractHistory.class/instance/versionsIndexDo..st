enumerating
versionsIndexDo: aBlock
	"traverses the versions and executes aBlock by providing the index of the version"
	
	1
		to: versions size
		do: [:i | aBlock value: i]