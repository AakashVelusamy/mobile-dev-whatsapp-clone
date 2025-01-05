import 'package:flutter/material.dart';

import 'models/Person.dart';

//https://jsonplaceholder.typicode.com/users

class Chats extends StatelessWidget {
  final String searchQuery;
  Chats({super.key, required this.searchQuery});
  final List<Person> persons = [
    Person(
        name: 'Aakash V (You)',
        age: 19,
        dept: 'AMCS',
        chat: ['hello', 'hi', 'how are you?', 'i am good, thanks!'],
        time: '10:00 am',
        image:
        'https://media.licdn.com/dms/image/v2/D5603AQEUeTdEl3OIjQ/profile-displayphoto-shrink_200_200/profile-displayphoto-shrink_200_200/0/1714955276245?e=2147483647&v=beta&t=1whf2L-snb1kYWSPrTQ63g3FrrqpJaC6UwXa0KKZWCU'),
    Person(
        name: 'Vithaha',
        age: 19,
        dept: 'AMCS',
        chat: ['hey', 'what’s up?', 'not much, just chilling.', 'same here!'],
        image:
        'https://media.licdn.com/dms/image/v2/D5603AQHHL1XUI_2ouQ/profile-displayphoto-shrink_200_200/profile-displayphoto-shrink_200_200/0/1722533933390?e=2147483647&v=beta&t=NQ1nXtCXPcF0yLnUhWDc4sODGDW7_W-iPjgT5Qv03Vw',
        time: '9:55 am'),
    Person(
        name: 'Ajith Anna',
        age: 27,
        dept: 'AMCS',
        chat: ['good morning', 'morning!', 'how are you?', 'great, and you?'],
        image:
        'https://media.licdn.com/dms/image/v2/C5603AQFaoQrwyeRa6Q/profile-displayphoto-shrink_100_100/profile-displayphoto-shrink_100_100/0/1608675728895?e=1741219200&v=beta&t=sFeOopynMtYB_a0gLmUtzRYuuRucLJWfczJqEuI6bl8',
        time: '(9:00 am'),
    Person(
        name: 'Sangamithra',
        age: 19,
        dept: 'AMCS',
        chat: ['hello!', 'hi there!', 'long time no see.', 'yeah, it’s been a while!'],
        image:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRj6zt_8QQh5c-6nbxsGlAQciqnMNiadV0XkA&s',
        time: '8:55 am'),
    Person(
        name: 'Prathish',
        age: 20,
        dept: 'AMCS',
        chat: ['are you coming to the party?', 'yeah, I’ll be there.', 'great, see you soon!'],
        image:
        '',
        time: '8:50 am'
        ),
    Person(
        name: 'Vinay',
        age: 19,
        dept: 'AMCS',
        chat: ['hey, how’s it going?', 'all good, just relaxing!', 'nice, I’m working on something.'],
        image:
        'https://media.licdn.com/dms/image/v2/D4E03AQGqFLczF3VCCQ/profile-displayphoto-shrink_100_100/profile-displayphoto-shrink_100_100/0/1709227828637?e=1741824000&v=beta&t=j-p-56p9rSL1jUyCxJmFFVhnt6LVhchJo0Mfsdp4ke4',
        time: '8:45 am'),
    Person(
        name: 'GayG',
        age: 19,
        dept: 'AMCS',
        chat: ['yo', 'hey!', 'you good?', 'all good, just tired.'],
        image:
        'https://hips.hearstapps.com/hmg-prod/images/taylor-swift-performs-onstage-during-taylor-swift-the-news-photo-1727782003.jpg?crop=0.65234xw:1xh;center,top&resize=1120:*',
        time: '8:40 am'),
    Person(
        name: 'Haritha',
        age: 19,
        dept: 'AMCS',
        chat: ['how’s your day?', 'pretty good, thanks for asking.', 'any plans for later?'],
        image:
        'https://media.licdn.com/dms/image/v2/D4E03AQHhBubTe7N_rQ/profile-displayphoto-shrink_100_100/B4EZN9CK96GYAU-/0/1732969542969?e=1741219200&v=beta&t=p9nUsxnl1TwY1j5nsOMv1yCPF4io8IKdLGv8w34uCeY',
        time: '8:35 am'),
  ];

  @override
  Widget build(BuildContext context) {
    final filteredPersons = persons.where((person) {
      return person.name.toLowerCase().contains(searchQuery.toLowerCase());
    }).toList();

    return Scaffold(
      body: ListView.builder(
        itemCount: filteredPersons.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(filteredPersons[index].name),
            subtitle: Text(filteredPersons[index].chat.isNotEmpty
                ? filteredPersons[index].chat[filteredPersons[index].chat.length - 1]
                : ''),
            leading: CircleAvatar(
              backgroundImage: NetworkImage(filteredPersons[index].image.isNotEmpty
                  ? filteredPersons[index].image
                  : 'https://archive.org/download/whatsapp-smiling-guy-i-accidentally-made/whatsapp%20generic%20person%20light.jpg'),
            ),
            trailing: Text(filteredPersons[index].time.isNotEmpty
                ? filteredPersons[index].time
                : ''),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ChatScreen(person: filteredPersons[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
class ChatScreen extends StatefulWidget {
  final Person person;

  const ChatScreen({Key? key, required this.person}) : super(key: key);

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final TextEditingController _messageController = TextEditingController();

  void _sendMessage() {
    if (_messageController.text.isNotEmpty) {
      setState(() {
        widget.person.chat.add(_messageController.text);
      });
      _messageController.clear();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.grey.shade900,
        title: Row(
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage(
                widget.person.image.isNotEmpty
                    ? widget.person.image
                    : 'https://archive.org/download/whatsapp-smiling-guy-i-accidentally-made/whatsapp%20generic%20person%20light.jpg',
              ),
            ),
            SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(widget.person.name, style: TextStyle(fontSize: 18)),
                Text(widget.person.dept, style: TextStyle(fontSize: 12, color: Colors.grey.shade400)),
              ],
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.videocam_rounded, color: Colors.white),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.call, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),
      body: Container(
        width: double.infinity, // Make sure the container occupies the full screen width
        height: double.infinity, // Make sure the container occupies the full screen height
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
                'https://wallpapers.com/images/hd/whatsapp-chat-background-fb34cc4b2hg9lmix.jpg'),
            fit: BoxFit.cover, // Ensure the image covers the screen fully
          ),
        ),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: widget.person.chat.length,
                itemBuilder: (context, index) {
                  bool isMe = index % 2 == 0; // Change this logic based on your needs
                  return ChatBubble(isMe: isMe, message: widget.person.chat[index]);
                },
              ),
            ),
            _buildMessageInput(),
          ],
        ),
      ),
    );
  }

  Widget _buildMessageInput() {
    return Container(
      color: Colors.grey.shade900,
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 5),
      child: Row(
        children: [
          Icon(Icons.add, color: Colors.white70),
          SizedBox(width: 10),
          Expanded(
            child: TextField(
              controller: _messageController,
              decoration: InputDecoration(
                hintText: "Type a message",
                hintStyle: TextStyle(color: Colors.white70),
                filled: true,
                fillColor: Colors.grey.shade800,
                contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide.none,
                ),
              ),
              onSubmitted: (_) => _sendMessage(),
            ),
          ),
          IconButton(
            icon: Icon(Icons.camera_alt, color: Colors.white70),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.mic, color: Colors.white70),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.send, color: Colors.white70), // Send button
            onPressed: _sendMessage,
          ),
        ],
      ),
    );
  }
}

class ChatBubble extends StatelessWidget {
  final bool isMe;
  final String message;

  const ChatBubble({super.key, required this.isMe, required this.message});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: isMe ? Alignment.centerRight : Alignment.centerLeft,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
        child: Container(
          decoration: BoxDecoration(
            color: isMe ? Colors.green.shade600 : Colors.grey.shade800,
            borderRadius: BorderRadius.circular(20),
          ),
          padding: const EdgeInsets.all(10),
          child: Text(
            message,
            style: TextStyle(fontSize: 16, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
