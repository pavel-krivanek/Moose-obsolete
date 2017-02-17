*Famix-C
dereferencedInvocations
	<MSEProperty: #dereferencedInvocations type: #FAMIXDereferencedInvocation opposite: #referencer> <multivalued> <derived>
	<MSEComment: 'List of invocations performed on BehaviouralEntities referenced by this entity'>
	<package: #C>
	
	^self privateState attributeAt: #dereferencedInvocations
							ifAbsent: [ FMMultivalueLink on: self opposite: #referencer: ]