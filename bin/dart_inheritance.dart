
class Car {
	String make;
	int year;

	Car({this.make = "Mercedes", this.year = 2000});

	String description() {
		return "This is $make with year $year";
	}
}

class PassengerCar extends Car {
	@override
  String description() {
		return "This is passenger $make with year $year";
	}
}

class Fruit {
	String name;

	Fruit({this.name = "name"});

	String taste() {
		return "tastless";
	}
}

class Apple {
	@override
	String taste() {
		return "sweet";
	}
}

class Animal {
	String name;
	int age;

	Animal({this.name = "animal", this.age = 10});

	String sound() {
		return "some sounds";
	}
}

class Dog extends Animal {
	@override
	String sound() {
		return "sound";
	}
}

class Item {
	String name;
	int price;

	Item({this.name = "Item", this.price = 1});

	String description() {
		return "Item: $name price: $price";
	}
}

class Product extends Item {
	@override
	String description() {
		return "Product: $name price: $price";
	}
}

class Shape {
	String color;
	double area;

	Shape({this.color = "white", this.area = 1});

	double findArea() {
		return area;
	}
}

class Circle extends Shape {
	double radius;

	Circle({this.radius = 1});

	@override
	double findArea() {
		area = radius * radius * 3.14;
		return area;
	}
}

class Employee {
	String name;
	int salary;

	Employee({this.name = "name", this.salary = 1});

	String displayInfo() {
		return "Name: $name salary: $salary";
	}
}

class Manager extends Employee {
	@override
	String displayInfo() {
		return "Name: Manager salary: $salary";
	}
}

void main() {
	var car = PassengerCar();
	car.make = "Toyota";
	car.year = 2020;

	print(car.description());
}