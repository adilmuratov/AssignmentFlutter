
class Circle {
	int radius;
	String color;

	Circle({this.radius = 1, this.color = "white"});

	int meanRadius() {
		return radius;
	}

	String meanColor() {
		return color;
	}
}

class Student {
	String name;
	int age;
	int gpa;

	Student({this.name = "Student", this.age = 18, this.gpa = 70});

	String meanName() {
		return name;
	}

	int meanAge() {
		return age;
	}

	int meanGpa() {
		return gpa;
	}
}

class Car {
	String make;
	String model;
	int year;

	Car({this.make = "Mercedes", this.model = "Benz", this.year = 2010});

	String meanMake() {
		return make;
	}

	String meanModel() {
		return model;
	}

	int meanYear() {
		return year;
	}
}

class Book {
	String title;
	String author;
	int year;

	Book({this.title = "Book", this.author = "author", this.year = 2000});

	String meanTitle() {
		return title;
	}

	String meanAuthor() {
		return author;
	}

	int meanYear() {
		return year;
	}
}

class Rectangle {
	int width;
	int height;

	Rectangle({this.width = 10, this.height = 10});

	int meanWidth() {
		return width;
	}

	int meanHeight() {
		return height;
	}

	int area() {
		return width * height;
	}

	int perimeter() {
		return (width + height) * 2;
	}
}

class BancAccount {
	int number;
	int balance;
	String owner;

	BancAccount({this.number = 0, this.balance = 0, this.owner = "human"});

	int meanNumber() {
		return number;
	}

	int meanBalance() {
		return balance;
	}

	String meanOwner() {
		return owner;
	}

	void deposite(int money) {
		balance += money;
	}

	void withdraw(int money) {
		balance -= money;
	}
}

void main() {
	var account = BancAccount();
	account.deposite(170);
	account.withdraw(35);

	print(account.balance);
}