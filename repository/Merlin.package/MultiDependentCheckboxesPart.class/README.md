Instead of specifying a collection of labels as starting point (like in the superclass), here you have to specify aDictionary of dependencies. This dictionary should contains all labels mapped to the other labels they are dependent on. 
It could look like:
	#(
		label1 -> #(label2 label3)
		label2 -> #(label3)
		label3 -> #()
	)

At the end, each time you select a label, all dependents will be updated accordingly, and each time you unselect a label, all labels having it s dependent are unselected.

Example:  MerlinExamples multiDependentCheckboxesPart 