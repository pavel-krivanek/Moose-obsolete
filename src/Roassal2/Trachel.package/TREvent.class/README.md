TREvent is the root of all the events handled by Trachel (and therefore Roassal).

Here is an example on how to use it:
-=-=-=
c := TRCanvas new.

shape := TRBoxShape new size: 40.
c addShape: shape.

shape when: TREvent do: [ :evt | shape color: Color random. c signalUpdate ].

c 
-=-=-=