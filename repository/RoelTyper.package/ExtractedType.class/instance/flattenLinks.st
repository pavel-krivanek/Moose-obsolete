private
flattenLinks
	[links isEmpty]	whileFalse: [|link|
			link :=  links anyOne.
			links remove: link.
			link flattenLinks.
			link interface
				do: [:sel | self addSend: sel].
			link assignments
				do: [:assign | self addAssignment: assign]].
	