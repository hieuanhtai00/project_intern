import 'package:flutter/material.dart';
import 'package:project_intern/common/data_test/user_infor_test.dart';

class DrawerWidget extends StatelessWidget {
  DrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          children: [
            buildHeader(context),
            buildMenu(context),
          ],
        ),
      ),
    );
  }

  Widget buildHeader(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
      color: Colors.black,
      child: Image.network(
        'https://scontent.fhan14-2.fna.fbcdn.net/v/t39.30808-6/278293831_1011873703037373_5450245250641063068_n.jpg?_nc_cat=103&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=3cGKjIv8inMAX9z5vXW&_nc_ht=scontent.fhan14-2.fna&oh=00_AT8BPScmtth0oVhKMjGNHMaUNATMT_Gs_eva_aiU8jS9UA&oe=625AD54B',
        fit: BoxFit.cover,
      ),
    );
  }

  Widget buildMenu(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(14),
      child: Wrap(
        children: [
          ListTile(
            title: Text(
              'Nguyễn Văn Hiếu',
              style: TextStyle(fontSize: 25),
            ),
            subtitle: Text(
              'Age: 21',
              style: TextStyle(fontSize: 20),
            ),
            leading: Image.network(
              'https://cdn-onshop.cdn.vccloud.vn/images/figroom/w_2000,h_2000/yasuo-a3.jpg',
              fit: BoxFit.cover,
            ),
          ),
          Divider(
            thickness: 3,
          ),
          Text(
            'Address 1 : Nghệ An, Diễn Châu, Diễn Lâm',
            style: TextStyle(fontSize: 20),
          ),
          Divider(
            thickness: 3,
          ),
          Text(
            'Address 2 : Hà Nội, Hà Đông, Xala',
            style: TextStyle(fontSize: 20),
          ),
          Divider(
            thickness: 3,
          ),
          Text(
            'Academia : Academia of Cryptography Technique',
            style: TextStyle(fontSize: 20),
          ),
          Divider(
            thickness: 3,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Row(
              children: [
                Expanded(child: Icon(Icons.home)),
                Expanded(child: Icon(Icons.favorite)),
                Expanded(child: Icon(Icons.rate_review))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
