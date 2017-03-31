visiting
visitType: aType

	self visitContainerEntity: aType.
	
	self context shouldImportInheritance ifTrue: [
		aType superInheritances do: [:inh | inh accept: self ] ].
	self context shouldImportMethod ifTrue: [
		aType methods do: [ :mth | mth accept: self ] ].
	self context shouldImportAttribute ifTrue: [
		aType attributes do: [ :att | att accept: self ] ].