all-getters
getAllClasses

	"Get all classes associated with a group of TestCaseTraces and include in a set"
        |  aClassesSet|

	^self entityGroups at: #allTraceGroupClasses ifAbsentPut: [
       aClassesSet := Set new.
       self entities do: [:each | aClassesSet := (aClassesSet) union: (each uniqueClasses)].
       aClassesSet].