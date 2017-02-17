private
withNewXMLWriterOn: aStream do: aOneArgBlock whenAbsent: aZeroArgBlock
	| writer |

	writer :=
		(self xmlWriterClassOrNil
			ifNil: [^ aZeroArgBlock value]) on: aStream.
	self escapesContentEntitiesWhenWriting
		ifFalse: [writer escapesContentEntityReferences: false].
	^ aOneArgBlock value: writer.