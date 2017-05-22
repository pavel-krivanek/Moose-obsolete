sources
exampleVerySimple
| b |
b := RTBundleBuilder new.
b explore: Collection using: #subclasses.
b useBezierlineWith: nil.
^ b