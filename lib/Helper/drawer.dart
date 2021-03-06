import 'package:flutter/material.dart';
import 'package:todo_apps/Screen/category_screen.dart';
import 'package:todo_apps/Screen/home_screen.dart';
import 'package:todo_apps/Screen/login_page.dart';
class DrawerNavigaton extends StatefulWidget {
  const DrawerNavigaton({Key? key}) : super(key: key);

  @override
  _DrawerNavigatonState createState() => _DrawerNavigatonState();
}

class _DrawerNavigatonState extends State<DrawerNavigaton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Drawer(
        child: ListView(
          children: [
            const UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://scontent.fcgp17-1.fna.fbcdn.net/v/t1.6435-9/131022208_1783347435154227_3634820628408828110_n.jpg?_nc_cat=101&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=diIt-ThfVrUAX9FqZXi&_nc_ht=scontent.fcgp17-1.fna&oh=00_AT_y9jNJ0ZBYwjUgN5goBDDPuVCPqOsZD2Ct3iKIj9Z-fg&oe=62318164'),
              ),
              accountName: Text('Jahidul Islam'),
              accountEmail: Text('jhidulsialm941111@gmail.com'),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => HomeScreen()));
              },
            ),
            Container(
              height: 1,
              width: MediaQuery.of(context).size.width,
              color: Colors.grey,
            ),
            ListTile(
              leading: Icon(Icons.view_list),
              title: Text('Categories'),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => CategoriesScreen()));
              },
            ),
            Container(
              height: 1,
              width: MediaQuery.of(context).size.width,
              color: Colors.grey,
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text('Log Out'),
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => LoginScreen()));
              },
            ),
            Container(
              height: 1,
              width: MediaQuery.of(context).size.width,
              color: Colors.grey,
            ),
          ],
        ),
      ),
    );
  }
}