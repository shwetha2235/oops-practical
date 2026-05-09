#include <iostream>
using namespace std;
class Interest {
private:
    float principal, rate, time, si;
public:
   Interest(float p, float r, float t) {
        principal = p;
        rate = r;
        time = t;
        si = (principal * rate * time) / 100;
    }
    void display() {
        cout << "Simple Interest = " << si << endl;
    }
};
int main() {
    float p, r, t;
    cout << "Enter Principal, Rate and Time: ";
    cin >> p >> r >> t;
    Interest obj(p, r, t);
    obj.display();
    return 0;
}
