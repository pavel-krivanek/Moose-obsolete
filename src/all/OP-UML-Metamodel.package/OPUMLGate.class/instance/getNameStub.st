operations - stubs
getNameStub
	"This query returns the name of the gate, either the explicit name (.name) or the constructed name ('out_"" or 'in_' concatenated in front of .message.name) if the explicit name is not present."
	
	"{OCL} result = (if name->notEmpty() then name->asOrderedSet()->first()
else  if isActual() or isOutsideCF() 
  then if isSend() 
    then 'out_'.concat(self.message.name->asOrderedSet()->first())
    else 'in_'.concat(self.message.name->asOrderedSet()->first())
    endif
  else if isSend()
    then 'in_'.concat(self.message.name->asOrderedSet()->first())
    else 'out_'.concat(self.message.name->asOrderedSet()->first())
    endif
  endif
endif)"
	
	self notYetImplemented
