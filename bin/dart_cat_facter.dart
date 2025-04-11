import "dart:io";
import "dart:convert";
import "package:http/http.dart" as http;

void clearConsole() {
	stdout.write('\x1B[2J\x1B[0;0H');
}

Future<String> randomCatFact() async {
	final url = Uri.parse("https://catfact.ninja/fact");
	
	try {
		final response = await http.get(url);
		
		if (response.statusCode == 200) {
			final data = jsonDecode(response.body);
			
			return data["fact"];
		} else {
			return "Undefined error";
		}
	} catch(error) {
		return ("Error: $error");
	}
}

Future<String> translateText(var text, String language) async {
	final encodedText = Uri.encodeComponent(text);
	final url = Uri.parse("https://lingva.ml/api/v1/en/$language/$encodedText");

	try {
		final response = await http.get(url);

		if (response.statusCode == 200) {
			final data = jsonDecode(response.body);
			return data["translatedText"];
		} else {
			return "Error: ${response.statusCode}";
		}
	} catch(error) {
		return "Error: $error";
	}
}


void catFacter() {
	var facts = [];
	String language;
	
	while (true) {
		print("1 - English");
		print("2 - Russian");
		print("3 - French");
		print("Select language:");
		int selectedLang;
		try {
			selectedLang = int.parse(stdin.readLineSync()!);
		} catch (error) {
			clearConsole();
			print("Enter correct mean.");
			continue;
		}
		if (selectedLang == 1){
			language = "en";
		} else if (selectedLang == 2) {
			language = "ru";
		} else if (selectedLang == 3) {
			language = "fr";
		} else {
			clearConsole();
			print("Enter correct mean.");
			continue;
		}
		clearConsole();
		break;
	}

	while (true) {
		var fact = randomCatFact();
		fact = translateText(fact, language);

		print(fact);
		print("1 - Add the fact to the list and show the next random fact.");
		print("2 - Show the next random fact.");
		print("3 - Show the list of facts.");
		print("4 - Exit from application.");
		int action;

		try {
			action = int.parse(stdin.readLineSync()!);
		}  catch(error) {
			clearConsole();
			print("Enter correct mean.");
			continue;
		}
		if (action == 1) {
			facts.add(fact);
			clearConsole();
			continue;
		} else if (action == 2) {
			clearConsole();
			continue;
		} else if (action == 3) {
			clearConsole();
			for (int i = 0; i < facts.length; i++) {
				print(facts[i]);
			}
			continue;
		} else if (action == 4) {
			exit(0);
		} else {
			clearConsole();
			print("Enter correct mean.");
			continue;
		}
	}
}

void main(List<String> arguments) {
	catFacter();
}
