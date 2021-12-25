import 'package:animate_do/animate_do.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutterexample/person.dart';

// import 'package:cached';
class PersonListPage extends StatefulWidget {
  const PersonListPage({Key? key}) : super(key: key);

  @override
  State<PersonListPage> createState() => _PersonListPageState();
}

class _PersonListPageState extends State<PersonListPage> {
  Person? _person;

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > 600) {
        return Row(
          children: [
            SizedBox(
              width: 250,
              child: PersonListWidget(
                onTap: (person) => {
                  setState(() {
                    _person = person;
                  })
                },
              ),
            ),
            Expanded(
              child: _person != null
                  ? PersonDetailsPage(person: _person!)
                  : const Placeholder(),
              flex: 3,
            ),
          ],
        );
      } else {
        return PersonListWidget(
          onTap: (person) => {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => Scaffold(
                    appBar: AppBar(), body: PersonDetailsPage(person: person)),
              ),
            ),
          },
        );
      }
    }));
  }
}

class PersonListWidget extends StatelessWidget {
  final Function(Person) onTap;
  const PersonListWidget({Key? key, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (_, index) => FadeInUp(
              duration: Duration(milliseconds: 100 * index),
              child: ListTile(
                leading: CircleAvatar(
                  // radius: 0,
                  backgroundColor: Colors.grey.shade300,
                  child: CachedNetworkImage(
                      imageUrl:
                          "https://avatars.dicebear.com/api/adventurer/${personList[index].name}.png"),
                ),
                onTap: () => onTap(personList[index]),
                title: Text(personList[index].name),
                subtitle: Text(personList[index].email),
              ),
            ),
        separatorBuilder: (_, __) => FadeInUp(
            duration: Duration(milliseconds: __ * 100), child: const Divider()),
        itemCount: personList.length);
  }
}

class PersonDetailsPage extends StatelessWidget {
  const PersonDetailsPage({Key? key, required this.person}) : super(key: key);
  final Person person;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(person.id.toString()),
        Text(person.name),
        Text(person.email),
      ],
    );
  }
}
