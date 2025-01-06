import 'package:flutter/material.dart';

import 'models/Person.dart';

//https://jsonplaceholder.typicode.com/users

class Chats extends StatelessWidget {
  final String searchQuery;
  Chats({super.key, required this.searchQuery});
  final List<Person> persons = [
    Person(
        name: 'Aakash (You)',
        age: 19,
        dept: 'online',
        chat: ['reminder!'],
        time: '10:00 pm',
        image:
        'https://instagram.fcjb3-2.fna.fbcdn.net/v/t51.2885-19/468360106_1771512443663685_3105954362166055088_n.jpg?_nc_ht=instagram.fcjb3-2.fna.fbcdn.net&_nc_cat=109&_nc_ohc=1_BHXIbYTWwQ7kNvgEMkFfZ&_nc_gid=5d494c7428514c028b83beeacfc78f8c&edm=AP4sbd4BAAAA&ccb=7-5&oh=00_AYA653k-JNviGrGNCrNN6znGfxNjGS56ciFafYjCoXLUvA&oe=6782146C&_nc_sid=7a9f4b'
    ),
    Person(
        name: 'Vithaha',
        age: 19,
        dept: 'online',
        chat: ['hey', 'what’s up?', 'not much, just chilling.', 'same here!'],
        image:
        'https://media.licdn.com/dms/image/v2/D5603AQHHL1XUI_2ouQ/profile-displayphoto-shrink_200_200/profile-displayphoto-shrink_200_200/0/1722533933390?e=2147483647&v=beta&t=NQ1nXtCXPcF0yLnUhWDc4sODGDW7_W-iPjgT5Qv03Vw',
        time: '9:55 pm'
    ),
    Person(
        name: 'Ajith Anna',
        age: 27,
        dept: 'online',
        chat: ['good morning', 'morning!', 'how are you?', 'great, and you?'],
        image:
        'https://media.licdn.com/dms/image/v2/C5603AQFaoQrwyeRa6Q/profile-displayphoto-shrink_100_100/profile-displayphoto-shrink_100_100/0/1608675728895?e=1741219200&v=beta&t=sFeOopynMtYB_a0gLmUtzRYuuRucLJWfczJqEuI6bl8',
        time: '9:00 pm'
    ),
    Person(
      name: 'Deshna',
      age: 19,
      dept: 'online',
      chat: ['Hey!', 'How’s everything?', 'All good!'],
      time: '6:30 pm',
      image: 'https://media.licdn.com/dms/image/v2/D5603AQGLJ8oNkWM1oQ/profile-displayphoto-shrink_100_100/profile-displayphoto-shrink_100_100/0/1723484268925?e=1741824000&v=beta&t=-oI5QocbzLjy6nYOwIYBMpC_p589MNAbmAx_0JldURg',
    ),
    Person(
        name: 'Srivinay',
        age: 19,
        dept: 'online',
        chat: ['hey, how’s it going?', 'all good, just relaxing!', 'nice, I’m working on something.'],
        image:
        'https://media.licdn.com/dms/image/v2/D4E03AQGqFLczF3VCCQ/profile-displayphoto-shrink_100_100/profile-displayphoto-shrink_100_100/0/1709227828637?e=1741824000&v=beta&t=j-p-56p9rSL1jUyCxJmFFVhnt6LVhchJo0Mfsdp4ke4',
        time: '8:45 pm'
    ),
    Person(
        name: 'Kaviya',
        age: 19,
        dept: 'online',
        chat: ['yo', 'hey!', 'you good?', 'all good, just tired.'],
        image:
        'https://hips.hearstapps.com/hmg-prod/images/taylor-swift-performs-onstage-during-taylor-swift-the-news-photo-1727782003.jpg?crop=0.65234xw:1xh;center,top&resize=1120:*',
        time: '8:40 pm'
    ),
    Person(
        name: 'Haritha',
        age: 19,
        dept: 'online',
        chat: ['how’s your day?', 'pretty good, thanks for asking.', 'any plans for later?'],
        image:
        'https://media.licdn.com/dms/image/v2/D4E03AQHhBubTe7N_rQ/profile-displayphoto-shrink_100_100/B4EZN9CK96GYAU-/0/1732969542969?e=1741219200&v=beta&t=p9nUsxnl1TwY1j5nsOMv1yCPF4io8IKdLGv8w34uCeY',
        time: '8:35 pm'
    ),
    Person(
      name: 'Kabilan',
      age: 19,
      dept: 'online',
      chat: ['What’s going on?', 'Just chilling!', 'Same here, let’s catch up soon!'],
      time: '8:30 pm',
      image: 'https://media.licdn.com/dms/image/v2/D5603AQEFefD5zx8lTw/profile-displayphoto-shrink_100_100/profile-displayphoto-shrink_100_100/0/1728501352828?e=1741824000&v=beta&t=aUbwjAr_lr4iOvFXSSO-Ktq_SsIcQVATyYfTXIJbj2w',
    ),
    Person(
      name: 'Harshil',
      age: 19,
      dept: 'online',
      chat: ['What’s up?', 'Not much, just here.', 'Same here!'],
      time: '8:25 pm',
      image: 'https://media.licdn.com/dms/image/v2/D5603AQGkyIOHUzz4pg/profile-displayphoto-shrink_100_100/profile-displayphoto-shrink_100_100/0/1727939543666?e=1741824000&v=beta&t=a6H_D0Wdpo2Lma0fD7wbGLmzwQTcO53gYQFLn_dZ4ao',
    ),
    Person(
      name: 'Ashrithaa',
      age: 19,
      dept: 'online',
      chat: ['Hey!', 'How’s everything?', 'All good!'],
      time: '8:15 pm',
      image: 'https://instagram.fcjb3-3.fna.fbcdn.net/v/t51.2885-15/461749433_8910923982298357_6346252244533880357_n.jpg?stp=dst-jpg_s150x150_tt6&_nc_ht=instagram.fcjb3-3.fna.fbcdn.net&_nc_cat=101&_nc_ohc=JLUg080CQ30Q7kNvgFJ2-Bk&_nc_gid=b560c9eb1bdc4a9c9a956f0d5327eac4&edm=AGXveE0BAAAA&ccb=7-5&oh=00_AYC4nF4dm9ZwlPGf1BtrJ-bEQ6bMzRTsmH3H_T1iHolf7g&oe=6782129C&_nc_sid=522435',
    ),
    Person(
      name: 'Jitesh',
      age: 18,
      dept: 'online',
      chat: ['Hello!', 'Hi, how are you?', 'Good, thanks for asking!'],
      time: '8:10 pm',
      image: 'https://media.licdn.com/dms/image/v2/D5603AQHCusA_mNV9bQ/profile-displayphoto-shrink_100_100/profile-displayphoto-shrink_100_100/0/1725289443628?e=1741824000&v=beta&t=hvUM1iwDUNIeIBpgKHL6IJv4qpE3JVY7Xd5RuH3Zo1s',
    ),
    Person(
        name: 'Sangamithra',
        age: 19,
        dept: 'online',
        chat: ['hello!', 'hi there!', 'long time no see.', 'yeah, it’s been a while!'],
        image:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRj6zt_8QQh5c-6nbxsGlAQciqnMNiadV0XkA&s',
        time: '8:55 pm'
    ),
    Person(
        name: 'Prathish',
        age: 20,
        dept: 'online',
        chat: ['are you coming to the party?', 'yeah, I’ll be there.', 'great, see you soon!'],
        image:
        '',
        time: '8:50 pm'
    ),
    Person(
        name: 'Akash',
        age: 19,
        dept: 'online',
        chat: ['Hi!', 'How’s everything?', 'Going great!'],
        time: '7:55 pm',
        image: '',
    ),
    Person(
        name: 'Dayanitha',
        age: 19,
        dept: 'online',
        chat: ['Good evening!', 'Evening!', 'How was your day?'],
        time: '7:50 pm',
        image: '',
    ),
    Person(
        name: 'Anirutha Sai',
        age: 19,
        dept: 'online',
        chat: ['Hello!', 'Hey, what’s new?', 'Not much, just relaxing.'],
        time: '7:45 pm',
        image: '',
    ),
    Person(
        name: 'Deishaun',
        age: 19,
        dept: 'online',
        chat: ['What’s up?', 'Busy with work.', 'Let’s catch up soon!'],
        time: '7:40 pm',
        image: '',
    ),
    Person(
        name: 'Devanand',
        age: 19,
        dept: 'online',
        chat: ['Hey!', 'How’s it going?', 'Everything’s great.'],
        time: '7:35 pm',
        image: '',
    ),
    Person(
        name: 'Dhivyadharshini',
        age: 19,
        dept: 'online',
        chat: ['Hey!', 'How are you today?', 'I’m doing great!'],
        time: '7:30 pm',
        image: '',
    ),
    Person(
        name: 'Harrish',
        age: 19,
        dept: 'online',
        chat: ['Good evening!', 'Evening!', 'What’s up?'],
        time: '7:25 pm',
        image: '',
    ),
    Person(
        name: 'Harshavardhan',
        age: 19,
        dept: 'online',
        chat: ['Hey!', 'How are things going?', 'All good here!'],
        time: '7:20 pm',
        image: '',
    ),
    Person(
        name: 'Jovisha',
        age: 19,
        dept: 'online',
        chat: ['Hey there!', 'What’s up?', 'Not much!'],
        time: '7:05 pm',
        image: '',
    ),
    Person(
        name: 'Kaniska',
        age: 19,
        dept: 'online',
        chat: ['Hey!', 'What’s up?', 'Not much!'],
        time: '6:55 pm',
        image: '',
    ),
    Person(
        name: 'Kavinraj',
        age: 19,
        dept: 'online',
        chat: ['Hello!', 'How’s it going?', 'Great, how about you?'],
        time: '6:50 pm',
        image: '',
    ),
    Person(
        name: 'Kavya',
        age: 19,
        dept: 'online',
        chat: ['What’s up?', 'Hey, how’s it going?', 'Not much, you?'],
        time: '6:40 pm',
        image: '',
    ),
    Person(
        name: 'Koushik',
        age: 19,
        dept: 'online',
        chat: ['Hey there!', 'How are you?', 'I’m doing good, thanks!'],
        time: '6:35 pm',
        image: '',
    ),
    Person(
        name: 'Monesh',
        age: 19,
        dept: 'online',
        chat: ['Hi!', 'How’s it going?', 'Going well, how about you?'],
        time: '6:20 pm',
        image: '',
    ),
    Person(
        name: 'Raksha',
        age: 19,
        dept: 'online',
        chat: ['Hey!', 'How’s it going?', 'Going well, how about you?'],
        time: '6:10 pm',
        image: '',
    ),
    Person(
        name: 'Rheya',
        age: 19,
        dept: 'online',
        chat: ['Hello!', 'What’s up?', 'Nothing much!'],
        time: '6:05 pm',
        image: '',
    ),
    Person(
        name: 'Rohit',
        age: 19,
        dept: 'online',
        chat: ['Hey there!', 'How’s it going?', 'Good, how about you?'],
        time: '6:00 pm',
        image: '',
    ),
    Person(
        name: 'Roshini',
        age: 19,
        dept: 'online',
        chat: ['What’s up?', 'Hey, how are you?', 'I’m doing good, thanks!'],
        time: '5:55 pm',
        image: '',
    ),
    Person(
        name: 'Theesthan',
        age: 19,
        dept: 'online',
        chat: ['What’s up?', 'Hey, how’s it going?', 'All good!'],
        time: '5:45 pm',
        image: '',
    ),
    Person(
        name: 'Sai Rakshithaa',
        age: 19,
        dept: 'online',
        chat: ['Hey!', 'What’s up?', 'Not much!'],
        time: '5:40 pm',
        image: '',
    ),
    Person(
        name: 'Sanchitha',
        age: 19,
        dept: 'online',
        chat: ['Hey there!', 'How’s it going?', 'Good, you?'],
        time: '5:35 pm',
        image: '',
    ),
    Person(
        name: 'Santhosh',
        age: 19,
        dept: 'online',
        chat: ['Hi!', 'What’s up?', 'Nothing much!'],
        time: '5:30 pm',
        image: '',
    ),
    Person(
        name: 'Shivasree',
        age: 19,
        dept: 'online',
        chat: ['Hello!', 'How’s your day?', 'It’s going great!'],
        time: '5:25 pm',
        image: '',
    ),
    Person(
        name: 'Vaishnavi',
        age: 18,
        dept: 'online',
        chat: ['Hi!', 'How are you?', 'Doing good!'],
        time: '5:15 pm',
        image: '',
    ),
    Person(
        name: 'Vishnu Aravind',
        age: 19,
        dept: 'online',
        chat: ['Hello!', 'How’s everything?', 'All good here!'],
        time: '5:10 pm',
        image: '',
    ),
    Person(
        name: 'Vishva Vaisnavi',
        age: 19,
        dept: 'online',
        chat: ['Hey there!', 'What’s up?', 'Not much!'],
        time: '5:05 pm',
        image: '',
    ),
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
