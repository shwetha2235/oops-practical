#include <iostream>
using namespace std;
// ---------------- SINGLE INHERITANCE ----------------
class A {
public:
    void showA() {
        cout << "Single Inheritance: Class A" << endl;
    }
};
class B : public A {
public:
    void showB() {
        cout << "Class B derived from A" << endl;
    }
};
// ---------------- MULTIPLE INHERITANCE ----------------
class X {
public:
    void showX() {
        cout << "Class X" << endl;
    }
};
class Y {
public:
    void showY() {
        cout << "Class Y" << endl;
    }
};
class Z : public X, public Y {
public:
    void showZ() {
        cout << "Multiple Inheritance: Class Z derived from X and Y" << endl;
    }
};
// ---------------- MULTILEVEL INHERITANCE ----------------
class M {
public:
    void showM() {
        cout << "Class M" << endl;
    }
};
class N : public M {
};
class O : public N {
public:
    void showO() {
        cout << "Multilevel Inheritance: O derived from N, N derived from M" << endl;
    }
};
// ---------------- HIERARCHICAL INHERITANCE ----------------
class P {
public:
    void showP() {
        cout << "Class P" << endl;
    }
};
class Q : public P {
};
class R : public P {
};
// ---------------- HYBRID INHERITANCE ----------------
class H1 {
public:
    void showH1() {
        cout << "Class H1" << endl;
    }
};
class H2 : public H1 {
};
class H3 : public H1 {
};
class H4 : public H2, public H3 {
public:
    void showH4() {
        cout << "Hybrid Inheritance" << endl;
    }
};
int main() {
    // Single
    B b;
    b.showA();
    b.showB();
   // Multiple
    Z z;
    z.showX();
    z.showY();
    z.showZ();
    // Multilevel
    O o;
    o.showM();
    o.showO();
    // Hierarchical
    Q q;
    R r;
    q.showP();
    r.showP();
    // Hybrid
    H4 h;
    h.showH4();

    return 0;
}
