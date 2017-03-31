construction
computeLabels 
	"Starting from top node compute lables for all nodes according to the intent and extents of their dependendants, for each node having common attributes with descendant, keep that attribute ... push the common objects to the labels of the dependendants"
	1 to: layers size do: [:n | (layers at:n) do: [:aNode | aNode computeLabel]].
	"self bottom labels: {self bottom concept attributes}, {#()}"