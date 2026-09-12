/*************************/
/* Library importations: */
/*************************/

#include <STDIO.H>
#include <STDLIB.H>

/**************/
/* Main code: */
/**************/

extern signed int main(const signed int argc, const char *const *const argv)
{
	system("CLS");
	fprintf(stdout, "Hello, world from %s of %s in line %d with %d argument(s).\n", argv[0], __FILE__, __LINE__, argc);

	return 0;
}
