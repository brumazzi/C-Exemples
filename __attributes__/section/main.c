int a __attribute__((section ("DUART_A")));
int b __attribute__((section ("DUART_B")));

char stack[100] __attribute__((section("STACK"))) = {0};
int init_data __attribute__((section("INITDATA"))) = {0};

void main(){
	//init_sp(stack+sizeof(stack));

	//mencpy(&init_data, &data, &edata - &data);

	//init_duart(&a);
}
