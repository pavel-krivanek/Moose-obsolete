A MooseCompositeImporterTask is an abstract class which defines the logical steps and the glue between these steps to import entities from a specification (list of packages, classes or categories). 

MooseCompositeImporterTask collects Smalltalk classes, ask the MooseImportClassesTask to create entities and the InstallElementsOperator to populate the moose model. The MooseImportClassesTask will then pass entities to the InstallElementsOperator which will populate the model.

My subclasses specify specific way to identify the Smalltalk classes that should be represented in a model.