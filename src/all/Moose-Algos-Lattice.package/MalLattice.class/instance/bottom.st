enumerating
bottom
	"Any node without descendants, and which is not a top is a bottom"

	"self nodes do: [:node | (node descendants isEmpty and: [node ~= self top]) ifTrue: [^node]]."

	^ layers last first