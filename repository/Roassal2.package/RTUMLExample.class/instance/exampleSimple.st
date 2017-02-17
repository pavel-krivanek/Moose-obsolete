sources
exampleSimple
| b classes classNode classNumber |
classes := OrderedCollection new.

classNode := #('Node' nil #()).
classNumber := #('Number' 'Node' #('value: Float') ).
classes add: classNode; add: classNumber.

b := RTUMLClassBuilder new.
b forSelfMadeClasses.
b addObjects: classes.
b classname: #first.
b attributeselector: #yourself.
b instanceVariables: #third.
b superclass: [ :c | classes detect: [ :cc | cc first = c second ] ifNone: [ nil ] ].

b layout tree.
b build.
^ b view
