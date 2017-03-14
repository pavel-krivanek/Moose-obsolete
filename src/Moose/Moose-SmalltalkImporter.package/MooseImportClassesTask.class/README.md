A MooseImportClassesTask is an elementary importing action which is called by the MooseCompositeImporterTask.
Normally you should not call it directly. The results of MooseImportClassesTask is a list of entitie which are not yet installed in a model.

MooseImportClassesTask pays attention to import classes and their extensions nicely.

A MooseImportClassesTask does not deal directly with a model. It just creates entities that will be installed in a model. The installation 
is trigged by the MooseCompositeImporterTask and implemented by InstallElementsOperator.

