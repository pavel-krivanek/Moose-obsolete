all-getters
getAllMethods

	"Get all methods associated with a group of TestCaseTraces and include in a set"
        | aMethodsSet|

	^self entityGroups at: #allTraceGroupMethods ifAbsentPut: [
       aMethodsSet := Set new.
       self entities do:  [:each | aMethodsSet := (aMethodsSet) union: (each uniqueMethods)].
        aMethodsSet].