The syntax of path data is concise in order to allow for minimal file size and efficient downloads, since many SVG files will be dominated by their path data. Some of the ways that SVG attempts to minimize the size of path data are as follows:
● All instructions are expressed as one character (e.g., a moveto is expressed as an M).
● Superfluous white space and separators such as commas can be eliminated (e.g., "M 100 100 L 200 200"
contains unnecessary spaces and could be expressed more compactly as "M100 100L200 200").
● The command letter can be eliminated on subsequent commands if the same command is used multiple times
in a row (e.g., you can drop the second "L" in "M 100 200 L 200 100 L -100 -200" and use "M 100 200 L 200
100 -100 -200" instead).
● Relative versions of all commands are available (uppercase means absolute coordinates, lowercase means
relative coordinates).
● Alternate forms of lineto are available to optimize the special cases of horizontal and vertical lines (absolute and
relative).
● Alternate forms of curve are available to optimize the special cases where some of the control points on the
current segment can be determined automatically from the control points on the previous segment.