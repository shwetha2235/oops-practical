#include <iostream>
using namespace std;

class Student {
private:
    int id;
    string name;
public:
    static int count;   // Static data member
    // Constructor
    Student(int i, string n) {
        id = i;
        name = n;
        count++;
    }
    void display() {
        cout << "ID: " << id << ", Name: " << name << endl;
    }
    // Static member function
    static void showCount() {
        cout << "Total Students: " << count << endl;
    }
};
int Student::count = 0;
int main() {
    Student s1(1, "Rahul");
    Student s2(2, "Priya");
    Student s3(3, "Aman");
    s1.display();
    s2.display();
    s3.display();
    Student::showCount();
return 0;
}
