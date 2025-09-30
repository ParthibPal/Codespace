//Parent class
class Person {
    String name;

    // Constructor of parent
    Person(String n){
        name = n;
        System.out.println("Person constructor called");
    }
}

// child class 
public class Constructor2 extends Person{
    int age;

    //constructor of child
    Constructor2(String n, int a){
        super(n);   //call parent class constructor
        age = a;
        System.out.println("Student constructot called");
    }

    void display(){
        System.out.println("Name: "+ name + ", Age: "+age);
    }
    public static void main(String[] args) {
        Constructor2 obj = new Constructor2("Parthib", 23);
        obj.display();
    }
}
