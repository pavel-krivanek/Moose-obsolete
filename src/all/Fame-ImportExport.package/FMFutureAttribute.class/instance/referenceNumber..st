parsing
referenceNumber: serial
	values
		add:
			(owner owner index
				at: serial
				ifAbsent: [ owner owner dangling: (FMDanglingReference with: self) to: serial ])