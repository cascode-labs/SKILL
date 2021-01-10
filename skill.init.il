/*****************************************************************
 *                                                               *
 *                  SKILL library initialization                 *
 *                                                               *
 *****************************************************************/

printf("Loading SKILL library\n")

let((file_path dir_path files)
	; file and directory paths of this file
	file_path = simplifyFilename(get_filename(piport))
	dir_path = strcat("/" buildString(reverse(cdr(reverse(parseString(file_path "/")))) "/"))

	files = list(
	"cliosoft/Clio.init.il"
	"navigation/Nav.init.il"
	"schematic/Sch.init.il"
	"viva/Viva.init.il"
	)

	foreach(file files
		loadi(strcat(dir_path "/src/" file))
	)
)

printf("Done Loading SKILL library\n")
