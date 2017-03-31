private
ancestorsOfMarkupWriter: aMarkupWriter do: aBlock
	| enumeratingAncestors |

	enumeratingAncestors := false.
	self markupWriterStack size to: 1 by: -1 do: [:i |
		enumeratingAncestors
			ifTrue: [aBlock value: (self markupWriterStack at: i)]
			ifFalse: [
				enumeratingAncestors :=
					(self markupWriterStack at: i) == aMarkupWriter]].