class ChatItem {
  late final String name;
  late final String message;
  late final String time;
  late final String avatarUrl;

  ChatItem(
      {required this.name,
      required this.message,
      required this.time,
      required this.avatarUrl});
}

List<ChatItem> chatItemData = [
  ChatItem(
      name: "Eren Yeager",
      message: "yoloooho",
      time: "15:30",
      avatarUrl:
          "https://static.wikia.nocookie.net/villains/images/4/4c/Eren_meets_Yeagerists.png/revision/latest?cb=20210302172340"),
  ChatItem(
      name: "Tanjiro",
      message: "mugennnnnnn",
      time: "17:30",
      avatarUrl:
          "https://otakukart.com/wp-content/uploads/2021/12/Tanjiro.jpg"),
  ChatItem(
      name: "L",
      message: "Iam L",
      time: "5:00",
      avatarUrl:
          "https://static1.cbrimages.com/wordpress/wp-content/uploads/2018/12/death-note-L.jpg"),
];
