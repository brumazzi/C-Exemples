#include <iostream>

using namespace std;

int main(){
    int *number = 0;
    for (size_t i = 0; i < 10; i++){
        const int &number = i*(i+2);
        cout << number << endl;
    }

    cout << number << endl;
    return 0;
}