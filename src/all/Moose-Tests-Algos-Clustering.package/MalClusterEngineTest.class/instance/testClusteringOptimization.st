testing
testClusteringOptimization
	
	| input clusty |
	input := Random new next: 200.
	clusty := MalClusteringData onDistanceSquare: (MalDistanceSquare on: input).	"internally compares the optimzed and the unoptimized code."
	clusty testPerformClustering: #averageLinkage