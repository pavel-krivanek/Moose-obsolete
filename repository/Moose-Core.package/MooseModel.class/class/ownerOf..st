accessing
ownerOf: element 
	"Answer the MooseModel which includes element.   
 
	We used to store the owning model in an instance variable, but benchmarks 
	have shown that this solution is fast enought. With the new implementation, 
	MooseModel uses a dedicated data-structure to keep track of its element's 
	IDs, see DictionaryStorage>>computeRanges. The main bottleneck as of now 
	is the enumeration if all instances, hecne, as a work around, we keep 
	track of the most recent owner." 
	 
	| elementID | 
	elementID := element mooseID. 
	nil ~~ elementID 
		ifTrue: [nil ~~ MostRecentOwner 
					ifTrue: [(MostRecentOwner includesID: elementID) 
								ifTrue: [^MostRecentOwner]]. 
				self allInstancesDo: 
						[:model | (model includesID: elementID) ifTrue: [^MostRecentOwner := model]]]. 
	^nil