import 'package:flutter/material.dart';

class SettingsItem {
  late final String name;
  late final String message;

  SettingsItem({required this.name, required this.message});
}

List<SettingsItem> SettingsItemData = [
  SettingsItem(name: "Eren Yeager", message: "NAF"),
  SettingsItem(
    name: "Business Tools",
    message: "Profile,catalouge,messgaing tools",
  ),
  SettingsItem(
    name: "Account",
    message: "Privacy,security,change number",
  ),
  SettingsItem(
    name: "Chats",
    message: "Theme,wallpapers,chat history",
  ),
  SettingsItem(
    name: "Notifications",
    message: "Message,group && call tones",
  ),
  SettingsItem(
    name: "Storage and data",
    message: "Network usage,auto-download",
  ),
  SettingsItem(
    name: "Help",
    message: "Help centre,contact us,privacy policy",
  ),
  SettingsItem(
    name: "Invite a Contact",
    message: "",
  ),
];
