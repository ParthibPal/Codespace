class Constructor{
    String name;
    int age;

    //Constructor
    Constructor(String n, int a){
       name = n;
       age = a;
    }

    void display(){
        System.out.println("Name: "+ name + ", Age: "+age);
    }
    public static void main(String[] args) {
        Constructor student1 = new Constructor("Parthib", 23);
        Constructor student2 = new Constructor("Papa", 25);

        student1.display();
        student2.display();
    }
}