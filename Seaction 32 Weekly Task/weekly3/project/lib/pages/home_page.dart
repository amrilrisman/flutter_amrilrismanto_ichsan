import 'package:flutter/material.dart';
import 'package:project/helper/themes.dart';
import 'package:project/pages/widget/card_project.dart';
import 'package:project/widget/form_custom.dart';

class HomePage extends StatelessWidget {
  static String rootNamed = 'home-Page';
  HomePage({Key? key}) : super(key: key);
  final TextEditingController _textEmail = TextEditingController();
  final TextEditingController _textDescription = TextEditingController();
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  _appBar() {
    return AppBar(
      backgroundColor: Colors.white,
      automaticallyImplyLeading: false,
      actions: [
        IconButton(
          padding: EdgeInsets.zero,
          onPressed: () {
            _scaffoldKey.currentState!.openDrawer();
          },
          icon: const Icon(
            Icons.clear_all_rounded,
            color: colorPrimary,
            size: 24,
          ),
        ),
      ],
      title: Text.rich(TextSpan(children: [
        TextSpan(text: 'Amril', style: gf1),
        TextSpan(text: 'Risman', style: gf1.copyWith(color: colorPrimary))
      ])),
      // ),
      elevation: 0,
    );
  }

  Widget _welcomeContent(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.3,
          child: Stack(
            children: [
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.25,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.blue.withOpacity(0.2),
                        blurRadius: 18,
                      )
                    ],
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(10),
                    image: const DecorationImage(
                        image: AssetImage(
                          'assets/bg.png',
                        ),
                        fit: BoxFit.fill)),
              ),
              Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      color: colorPrimary,
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.white, width: 5),
                      image: const DecorationImage(
                        image: AssetImage('assets/person.png'),
                      ),
                    ),
                  ))
            ],
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        Text(
          'Amril Rismanto Ichsan',
          style: gf1.copyWith(fontSize: 20),
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          'Flutter Developer',
          style: gf1.copyWith(fontSize: 14, color: Colors.grey),
        ),
      ],
    );
  }

  Widget _aboutUs() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        const SizedBox(
          height: 18,
        ),
        Text('ただ一つの夢結んでゆずれない\nJangan Pernah Menyerah pada mimpi satu-satunya',
            style: h2.copyWith(fontSize: 16, color: txPrimary)),
        const SizedBox(
          height: 18,
        ),
        Text('What Skill I Have For You',
            style: gf1.copyWith(fontSize: 25, fontWeight: FontWeight.w600)),
        const SizedBox(
          height: 10,
        ),
        Text(
            'see complemently what skill i will offer for you and other clients',
            style: h2),
        const SizedBox(
          height: 16,
        ),
        GridView.count(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 2,
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: colorPrimary,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const FlutterLogo(
                    size: 50,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Development Mobile App",
                    style: h1.copyWith(color: Colors.white),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard",
                    textAlign: TextAlign.center,
                    style: h2.copyWith(color: Colors.white),
                  )
                ],
              ),
            ),
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: colorPrimary,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/figma_logo.png',
                    height: 50,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "UI/UX",
                    style: h1.copyWith(color: Colors.white),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard",
                    textAlign: TextAlign.center,
                    style: h2.copyWith(color: Colors.white),
                  )
                ],
              ),
            ),
          ],
        )
      ],
    );
  }

  Widget _myProjects() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Projects',
            style: gf1.copyWith(fontSize: 25, fontWeight: FontWeight.w600)),
        const SizedBox(
          height: 10,
        ),
        SizedBox(
          height: 200,
          child: ListView.builder(
            itemCount: 4,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => CardProject(
              index: index,
            ),
          ),
        ),
      ],
    );
  }

  Widget _testimoni() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text('Contact US',
            style: gf1.copyWith(fontSize: 25, fontWeight: FontWeight.w600)),
        const SizedBox(
          height: 16,
        ),
        const Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text:
                    'if you need colaboration or give me project can contact my on the form',
                style: TextStyle(
                  fontSize: 14,
                  color: Color(
                    0XFF252525,
                  ),
                ),
              ),
              TextSpan(
                text: ' you\'d like to cantact below',
                style: TextStyle(
                    fontSize: 14,
                    color: Colors.blue,
                    fontWeight: FontWeight.w500),
              ),
            ],
          ),
        )
      ],
    );
  }

  Widget _contactMy() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text('Contact US',
            style: gf1.copyWith(fontSize: 25, fontWeight: FontWeight.w600)),
        const SizedBox(
          height: 16,
        ),
        const Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text:
                    'if you need colaboration or give me project can contact my on the form',
                style: TextStyle(
                  fontSize: 14,
                  color: Color(
                    0XFF252525,
                  ),
                ),
              ),
              TextSpan(
                text: ' you\'d like to cantact below',
                style: TextStyle(
                    fontSize: 14,
                    color: Colors.blue,
                    fontWeight: FontWeight.w500),
              ),
            ],
          ),
        )
      ],
    );
  }

  Widget _formContact(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        FormCustomEdit(
          title: 'Email',
          controllerEditing: _textEmail,
        ),
        FormCustomEdit(
          title: 'What can me help you with?',
          controllerEditing: _textDescription,
        ),
        const SizedBox(
          height: 16,
        ),
        FlatButton(
          height: 50,
          minWidth: double.infinity,
          color: colorPrimary,
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) => AlertDialog(
                title: const Text(
                  'Message',
                  style: TextStyle(color: Colors.blue),
                ),
                content: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      _textEmail.text,
                      style: const TextStyle(
                          color: Color(0XFF252525),
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      _textEmail.text,
                      style: const TextStyle(
                        color: Colors.grey,
                        fontSize: 12,
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Text(
                      _textDescription.text,
                      style: const TextStyle(
                        color: Color(0XFF252525),
                        fontSize: 13,
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
          child: const Text(
            'Submit',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              letterSpacing: 2,
              color: Colors.white,
            ),
          ),
        )
      ],
    );
  }

  Widget _drawer(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              // color: Colors.blue,
              image: DecorationImage(
                  image: NetworkImage(
                      'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_1280.jpg'),
                  fit: BoxFit.fill),
            ),
            child: SizedBox.shrink(),
          ),
          ListTile(
            leading: const Icon(
              Icons.contact_page,
              color: Colors.blue,
            ),
            title: const Text('Contact Us'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.person,
              color: Colors.blue,
            ),
            title: const Text('About Us'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          const SizedBox(height: 30),
          ListTile(
            leading: const Icon(
              Icons.key,
              color: Colors.blue,
            ),
            title: const Text('Login'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Colors.white,
      appBar: _appBar(),
      drawer: _drawer(context),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        children: [
          _welcomeContent(context),
          _aboutUs(),
          const SizedBox(
            height: 30,
          ),
          _myProjects(),
          const SizedBox(
            height: 30,
          ),
          _contactMy(),
          const SizedBox(
            height: 10,
          ),
          _formContact(context),
        ],
      ),
    );
  }
}
