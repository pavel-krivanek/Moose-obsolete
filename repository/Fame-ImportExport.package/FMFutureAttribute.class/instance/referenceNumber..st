parsing
referenceNumber: serial 
	
	values add: (owner owner index at: serial ifAbsent: [
		| reference |
		reference := FMDanglingReference with: self.
		owner owner dangling: reference to: serial ])