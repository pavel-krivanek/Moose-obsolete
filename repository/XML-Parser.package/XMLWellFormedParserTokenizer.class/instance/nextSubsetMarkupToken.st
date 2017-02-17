tokenizing - dtd
nextSubsetMarkupToken
	| pushedBackParameterEntity |

	self expectNext: $<.
	pushedBackParameterEntity := self topPushedBackEntity.

	streamReader peek == $?
		ifTrue: [self nextPI]
		ifFalse: [
			self expectNext: $!.
			streamReader peek == $-
				ifTrue: [self nextComment]
				ifFalse: [
					streamReader peek == $[
						ifTrue: [
							self isInExternalSubsetOrExternalEntity
								ifFalse: [self errorInternalSubsetConditionalSection].
							self nextConditionalSectionFromEntity:
								pushedBackParameterEntity]
						ifFalse: [self nextSubsetDeclaration]]].

	self topPushedBackEntity == pushedBackParameterEntity
		ifFalse: [driver handleImproperParameterEntityNesting].