#include <libxml2.h>

int main(int argc, char *argv[]){
	xmlDocPtr doc;
	xmlNodePtr cur;

	doc = xmlParseFile("test.xml"); // open test.xml
	cur = xmlDocGetRootElement(doc); // get first element

	xmlChar *key;
	xmlChar *cont;
	xmlNodePtr attr;
	xmlChar *attr_val;
	while(cur){
		attr = (xmlNodePtr) cur->properties;
		xmlNodePtr childs = cur->xmlChildrenNode;
		cont = xmlNodeGetContent(cur); // get element content
		key = xmlNodeListGetString(doc, childs, 1); // get value o element
		
		attr_val = xmlNodeGetContent(attr); // get value of attribute
		//attr_val = xmlNodeListGetString(doc, attr->xmlChildrenNode, 1);
		
		printf("Node: %s;\nAll Content: %s;\nValue: %s;\n", cur->name, cont, key);
		printf("Attribute: %s;\nValue: %s;\n", attr->name, attr_val);

		printf("Elements: %d;\n", xmlChildElementCount(cur));
		cur = cur->next;
	}
	return 0;
}
