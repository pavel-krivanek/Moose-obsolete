tokenizing - dtd
nextExternalEntityDeclaration: aName isParameterEntity: aBoolean
	| publicID systemID notation |

	streamReader peek == $P
		ifTrue: [
			publicID := self nextPublicIDInDeclaration.
			self expectSeparatorsInDeclaration.
			systemID := self nextSystemIDLiteralWithoutURIFragment]
		ifFalse: [
			publicID := ''.
			systemID := self nextSystemIDInDeclarationWithoutURIFragment].
	aBoolean
		ifTrue: [
			self
				skipSeparatorsInDeclaration;
				expectTerminator.
			driver
				handleParameterEntityDeclaration: aName
				publicID: publicID
				systemID: systemID]
		ifFalse: [
			(streamReader peek == $>
				or: [
					self expectSeparatorsInDeclaration.
					streamReader peek == $>])
				ifTrue: [	
					streamReader next.
					notation := '']
				ifFalse: [
					self
						expectNextAll: 'NDATA';
						expectSeparatorsInDeclaration.
					notation := self nextName.
					self
						skipSeparatorsInDeclaration;
						expectTerminator].
			driver
				handleGeneralEntityDeclaration: aName
				publicID: publicID
				systemID: systemID
				ndata: notation].