pragmas
manageAllFromPragmas

	"manage all classes defined by <statefulTraits> pragma"
	
	self findClasses do: [ :assoc |
		| info |
		info := self manage: assoc key.
		assoc value do: [:aTrait |
			info addTrait: aTrait].
		info merge.]
	
