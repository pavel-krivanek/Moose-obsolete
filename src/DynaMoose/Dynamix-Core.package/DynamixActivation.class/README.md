DynamixActivation represents one execution of a behavioural entity. For example, in the case of object-oriented systems, the behaviour is a FAMIXMethod and an activation represents one execution of this method, typically within the context of a larger execution trace. Multiple executions of the same behaviour is represented with multiple activation objects that will be linked to the same behaviour.

An activation also holds information regarding the objects involved in the execution, namely:
- receiver points to the reference of the object whithin whose context the activation happens
- arguments holds the actual exeuction values corresponding to the parameters of the behavioural entity
- return points to the reference of the object that is returned by the execution