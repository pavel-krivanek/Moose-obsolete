tokenizing - dtd
nextParameterEntityReferenceOnCharacterDataStream
	| pushedBackParameterEntity name |

	pushedBackParameterEntity := self topPushedBackEntity.
	name := self nextName.
	self expectNext: $;.
	self topPushedBackEntity == pushedBackParameterEntity
		ifFalse: [driver handleImproperParameterEntityNesting].
	
	(driver handleParameterEntityReference: name)
		ifNil: [
			driver preservesUndeclaredEntityReferences
				ifTrue: [
					characterDataStream
						nextPut: $%;
						nextPutAll: name;
						nextPut: $;.
					^ $%]]
		ifNotNil: [:entity |
			self constructReplacementForParameterEntity: entity].
	^ nil.