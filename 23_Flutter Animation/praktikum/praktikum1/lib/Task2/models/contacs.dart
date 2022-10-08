import 'package:praktikum1/Task2/models/m_contacts.dart';
import 'package:flutter/material.dart';

class Contact with ChangeNotifier {
  final List<ContactModel> _contacts = [];
  List<ContactModel> get contacts => _contacts;

  void addContact(ContactModel contact) {
    _contacts.add(contact);
    notifyListeners();
  }

  void deleteContact(int index) {
    _contacts.removeAt(index);
    notifyListeners();
  }
}
