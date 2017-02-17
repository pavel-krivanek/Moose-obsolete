I represent the context of import (reification level) for an importer: been it a fact extractor (only for Smalltalk in this version of Moose), or an MSE or other format importing. 
The idea is that given a graph dependencies between metamodel entities, I help to decide whether certain information should be extracted or kept in a model.

For example, since to get inheritance, classes are needed (such dependency is expressed on my class side), then when we model inheritance, my instance encapsulate that fact extractor or importers should also consider classes. Similar dependencies exist between an access and a instance variable and a method. 

My main API is
	
	- importXXX to declare what we want.
		importClass
		importInheritance
	- shouldImportXXXX to query what we should do.
		shouldImportAccess
		shouldImportInheritance
	- mergeClassAndMetaclass, and other helper. 
 
My class side implements a semantically coherent graph of dependency.

