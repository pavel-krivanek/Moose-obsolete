In Roassal-Trachel I am the common class to define and draw SVG shapes, and draw it in an instance of TRCanvas.

Description
--------------------
I can use an string with a common SVG commands and convert it into an array of curves or commands that (Athens|Canvas ) can handle it. To do that I use the class  ASPathConverter.

I use my curves to calculate my emcompassing rectangle, this rectangle chanages, when you use the method path to update the #path:

Publick AI and Key Messages
--------------------

- #new	creates an empy TRSVGPath, but you need at least 2 curves.

- path:aString 	allow set the curves of this SVG and recalculate the new encompassing rectangle.

 - #curves: anArrayOfCurves	allow set the curves directly, usefull when you want to modifly the curves directly and update it in an animation

#includesPoint: aPoint 	SVG uses 
Private methods
----------------
#computeRectangle	internal method to recalculate the encomcompassing rectangle
#computePolygons	we create polygons from curves
#correctCurvesAndPolygonsToZero	in roassal each shape the position is in the center and TRSVGPath is not the exception, for that reason after calculate the curves from the pathString, TRSVG moves the coordinates of the  curves.
#separateSubPaths	an SVG can be a set of sub paths, in this part we create the polygons as a collection of polygons
