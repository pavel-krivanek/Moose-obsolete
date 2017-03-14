public interface
allFiles 
	 
	<navigation: 'All files covered in this multiplication'> 
	| files | 
	files := OrderedCollection new. 
	self fragments 
		do: 
			[:fragment | (files indexOf: fragment entity) > 0 ifFalse: [files add: fragment entity]]. 
	^MooseGroup withAll: files withDescription: 'Duplicated entities'