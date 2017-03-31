Compute all the metrics of each entity of a model.
This is interesting only for Smalltalk model.
Currently, the model may access the Smalltalk source code in order to compute metrics, since they are lazily computed. 

Example of usage: 
	ComputingAllMetricsTask runOnModel: model.