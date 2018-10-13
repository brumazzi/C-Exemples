#include <libxml2.h>

int main(int argc, char *argv[]){
	xmlDocPtr doc;
	xmlNodePtr root;
	xmlNodePtr cur;

	doc = xmlNewDoc(BAD_CAST "1.0");
	root = xmlNewNode(NULL, BAD_CAST "root");
	xmlDocSetRootElement(doc, root);

	// set doctype
	//xmlCreateIntSubset(doc, BAD_CAST "root", NULL, BAD_CAST "tree2.dtd");
	cur = xmlNewChild(root, NULL, BAD_CAST "item", "Value");
	xmlNewProp(cur, BAD_CAST"Attrib", BAD_CAST "arck");

	xmlSaveFileEnc("test.xml", doc, "UTF-8");
	xmlFreeDoc(doc);
	xmlCleanupParser();
	xmlMemoryDump();

	return 0;
}
