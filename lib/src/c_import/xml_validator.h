#include <stdio.h>
#include <stdbool.h>
#include "libxml/xmlreader.h"
#include "libxml/encoding.h"
#include "libxml/xmlwriter.h"

#ifdef __cplusplus
extern "C"
{
#endif

    extern char* validateXml(char *xmlPath, char *xsdPath);

#ifdef __cplusplus
}
#endif
