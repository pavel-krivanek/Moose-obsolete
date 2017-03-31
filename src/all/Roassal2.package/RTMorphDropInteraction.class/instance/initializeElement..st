hooks
initializeElement: anElement
	anElement
		when: TRMorphWantsDrop
		do: [ :event | 
			(self wantsDroppedMorph: event droppedMorph event: event dropMorphEvent)
				ifTrue: [ event handledBy: event shape ] ].
	anElement
		when: TRMorphDrop
		do: [ :event | self acceptDroppingMorph: event droppedMorph event: event dropMorphEvent ]