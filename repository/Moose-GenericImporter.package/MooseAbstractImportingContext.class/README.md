This class represent a context retrieved from a metaModel (for exemple FAMIX). A context is a set of elements of the metamodel for which we tell if they have to be imported or not. For exemple, using the FAMIX MetaModel , we have elements such as 'FAMIXClass', 'FAMIXInvocation'. 'FAMIXInheritance' , .....
This class is building a dependency-tree according the dependencies present in  the MetaDescriptions of the metamodel classes. For example, when you choose to import methods (represented by FAMIXMethod) you will need to import classes too (represented by FAMIXClass). 
As several MetaModel can be used in Moose, this 'importingContext' should not be hardcoded but either retrieved from the metaModel used. 


Instance Variables
