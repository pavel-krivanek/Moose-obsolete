visiting
visitBehaviouralEntity: aBehaviouralEntity 
	self visitContainerEntity: aBehaviouralEntity.
	self context shouldImportAccess ifTrue: [ aBehaviouralEntity accesses do: [ :acc | acc accept: self ] ].
	self context shouldImportInvocation ifTrue: 
		[ aBehaviouralEntity outgoingInvocations do: [ :inv | inv accept: self ] ].
	self context shouldImportLocalVariable ifTrue: [ aBehaviouralEntity localVariables do: [ :var | var accept: self ] ].
	self context shouldImportArgument ifTrue: [ aBehaviouralEntity parameters do: [ :par | par accept: self ] ]