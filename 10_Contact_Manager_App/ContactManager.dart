import 'dart:io';

class Contact {
  String name;
  String phone;

  Contact(this.name, this.phone);
}

class ContactManager {
  Map<String, Contact> contacts = {};

  void addContact() {
    print("Enter name:");
    String name = stdin.readLineSync()!;

    if (contacts.containsKey(name)) {
      print("Contact already exists!");
      return;
    }

    print("Enter phone:");
    String phone = stdin.readLineSync()!;

    contacts[name] = Contact(name, phone);

    print("Contact added successfully.");
  }

  void viewContacts() {
    if (contacts.isEmpty) {
      print("No contacts available.");
      return;
    }

    print("\n===== Contacts =====");
    contacts.forEach((key, contact) {
      print("${contact.name} - ${contact.phone}");
    });
  }

  void searchContact() {
    print("Enter name to search:");
    String name = stdin.readLineSync()!;

    if (contacts.containsKey(name)) {
      Contact contact = contacts[name]!;
      print("Name: ${contact.name}");
      print("Phone: ${contact.phone}");
    } else {
      print("Contact not found.");
    }
  }

  void deleteContact() {
    print("Enter name to delete:");
    String name = stdin.readLineSync()!;

    if (contacts.remove(name) != null) {
      print("Contact deleted.");
    } else {
      print("Contact not found.");
    }
  }

  void editContact() {
    print("Enter name to edit:");
    String name = stdin.readLineSync()!;

    if (contacts.containsKey(name)) {
      print("Enter new phone:");
      String newPhone = stdin.readLineSync()!;

      contacts[name]!.phone = newPhone;

      print("Contact updated successfully.");
    } else {
      print("Contact not found.");
    }
  }
}

void main() {
  ContactManager manager = ContactManager();

  while (true) {
    print("\n===== Contact Manager =====");
    print("1. Add Contact");
    print("2. View Contacts");
    print("3. Search Contact");
    print("4. Delete Contact");
    print("5. Edit Contact");
    print("6. Exit");

    print("Choose option:");
    int choice = int.parse(stdin.readLineSync()!);

    switch (choice) {
      case 1:
        manager.addContact();
        break;

      case 2:
        manager.viewContacts();
        break;

      case 3:
        manager.searchContact();
        break;

      case 4:
        manager.deleteContact();
        break;

      case 5:
        manager.editContact();
        break;

      case 6:
        print("Goodbye!");
        return;

      default:
        print("Invalid option.");
    }
  }
}
