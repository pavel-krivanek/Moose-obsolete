converting
deriveWithNames: names
	
	| derivate |
	derivate := MalSmartMapping new.
	derivate setParent: self.
	names do: [:name | derivate add: (self keyForName: name)].
	^derivate