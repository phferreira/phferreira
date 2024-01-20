import 'package:flutter/material.dart';

class Page {
  final IconData icon;
  final String label;

  Page({required this.icon, required this.label});
}

List<Page> pages = [
  Page(
    icon: Icons.person,
    label: 'About',
  ),
  Page(
    icon: Icons.computer,
    label: 'Experience',
  ),
  Page(
    icon: Icons.work,
    label: 'Work',
  ),
  Page(
    icon: Icons.contacts,
    label: 'Contact',
  ),
];
