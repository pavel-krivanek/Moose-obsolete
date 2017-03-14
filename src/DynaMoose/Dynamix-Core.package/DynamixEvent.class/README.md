DMXEvent is an abstract representation of a dynamic event.

In its abstract form, it holds children events and a reference to the parent event. This structure models an execution tree.

As an extra piece of information, it also provides information regarding the duration of the execution:
- the duration can be encoded as a number in the duration instance variable or,
- as start and stop timestamps in the respective instance variables.

The source instance variable can hold a reference to possible information source. For example, the source can point to a log entry or a raw event.