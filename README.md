# OpenSCAD DXF Merge (and clean) Tool (odmt)

OpenSCAD have two missing things when you export a DXF file : 
  - no support for polylines
  - no support for layers
  
No worries, the "odmt" tool tries to fill this gap. Written in Python, he takes as argument one or more paths to DXF files and/or one or more paths to directories containing DXF files to merge together, each file is merged into a separate colored layer. On top of that, it converts all continuous segments (LINE) into a single polyline. More options explained below.

(This is my first python program, be cool with me and suggest me improvements, thanks.)
