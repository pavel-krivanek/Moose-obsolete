operations - stubs
extensionStub
	"Derivation for Class::/extension : Extension"
	
	"{OCL} result = (Extension.allInstances()->select(ext | 
  let endTypes : Sequence(Classifier) = ext.memberEnd->collect(type.oclAsType(Classifier)) in
  endTypes->includes(self) or endTypes.allParents()->includes(self) ))"
	
	self notYetImplemented
