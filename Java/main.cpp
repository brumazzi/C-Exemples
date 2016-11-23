#include <jni.h>
#include <stdio.h>

using namespace std;

int main(){
	JavaVM *jvm;
	JNIEnv *env;

	JavaVMInitArgs vm_args;
	JavaVMOption option;

	vm_args.version = JNI_VERSION_1_6;
	vm_args.nOptions = 1;
	vm_args.options = &option;
	vm_args.ignoreUnrecognized = 0;

	int ret = JNI_CreateJavaVM(&jvm,(void**)&env, &vm_args);
	if(ret != JNI_OK){
		puts("Erro ao Carregar");
		return 1;
	}

	return 0;
}
