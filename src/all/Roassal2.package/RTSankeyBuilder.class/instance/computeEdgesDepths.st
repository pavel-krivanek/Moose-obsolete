private
computeEdgesDepths
	elements do: [ :el |
		"(el model at: #name) = 'Thermal generation' ifTrue: [ self halt. ]."
		(el attributes at: #sourceLinks) sort: [:a :b | 
			(a to attributes at: #y) < (b from attributes at: #y) ].
		(el attributes at: #targetLinks) sort:  [ :a :b | 
			(a from attributes at: #y) < (b to attributes at: #y) ].
		 ].
	elements do: [ :el | | sy ty|
		sy := ty := 0.
		(el attributes at: #sourceLinks) do: [ :ed |
			ed attributes at: #sy put: sy.
			sy := sy + (ed attributes at: #dy) ].
		(el attributes at: #targetLinks) do: [ :ed |
			ed attributes at: #ty put: ty.
			ty := ty + (ed attributes at: #dy) ].
		 ].