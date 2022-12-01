#include <iostream>
using namespace std;

void hanoi(int n, char from, char to, char help){
    if (n==0)
        return;
    hanoi(n-1, from, help, to);
    cout << from << "->" << to << endl;
    hanoi(n-1, help, to, from);
}

int main(){
    int n;
    cin >> n;
    hanoi(n, 'A', 'C', 'B');
    return 0;
}
