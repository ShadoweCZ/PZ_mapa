Command line parameters:

-output		string path (Default "./output/")
	This parameter is optional, supplied string must be full path, will create dir if not existing.
	If not supplied defaults to dir "output" (autocreate) in the programm root dir.

-mapsource	string path
	Adds a path string as source for lot and header files, can add more then one path.
	No default, atleast one of these must be supplied to operate.

-gfxsource	string path
	Adds a path to a .pack file (must include the filename), can add multiple.
	If none are supplied output will be empty pngs, which can serve as a canvas if you're in a artistic mood :D

-dolayers	bool (default = true)
	If set to true will output heightlayers seperatly.

-minx		int (default = -99999)
-maxx		int (default = 99999)
-miny		int (default = -99999)
-maxy		int (default = 99999)
	Set these to define a selection of cells to process, coordinates are equal to those used
	in the mapdata filenames.
	The min values are included, the max values are excluded, 
	to select only one cell for example 10, 12, set the values:
	-minx 10 -maxx 11 -miny 12 -maxy 13

-divider	int (default = 3)
	This value controls the output per cell, the cell's chunks will be divided by this number
	for example a value of 2 will output the cell in 4 pieces of 15x15 chunks.
	The minimum number is 1 which will output the cell in one piece, requiring a good amount 
	of memory for raw image data (about 1,2k).
	The maximum number is 30 which will output each chunk individually.
	In between, any number N that makes the equasion 30/N result into a full integer value is valid.