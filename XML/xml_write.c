#include <libxml2.h>

int main(int argc, char *argv[]){
	xmlTextWriterPtr doc;

	// create and start document
	doc = xmlNewTextWriterFilename("test.xml", 0);
	xmlTextWriterStartDocument(doc, NULL, "UTF-8", NULL);

	// start new element
	xmlTextWriterStartElement(doc, "root");

	// create attribute "state"
	xmlTextWriterStartAttribute(doc, "state");
	// set "2" to "state"
	xmlTextWriterWriteString(doc, "2");
	// end attribute
	xmlTextWriterEndAttribute(doc);

	// set string in root block;
	xmlTextWriterWriteString(doc, "Hello, World!");

	// close document and element
	xmlTextWriterEndElement(doc);
	xmlTextWriterEndDocument(doc);

	// free memory
	xmlFreeTextWriter(doc);
	return 0;
}
