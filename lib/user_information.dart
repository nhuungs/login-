import 'package:flutter/material.dart';
import 'package:login_register_ui/login_sreen.dart';
import 'package:login_register_ui/register_screen.dart';

class UserInformation extends StatelessWidget {
  const UserInformation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.fromLTRB(35,108, 35, 335),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                  onPressed: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context)=>const LoginScreen()));
                  },
                  icon:const Icon(Icons.arrow_back, size: 29 ,),
              ),
              const Text("Users", style: TextStyle(color: Colors.green, fontSize: 32, fontWeight: FontWeight.bold)),
              const SizedBox(height: 16,),
              const Text("Here is the users list existing in the mock system.", style: TextStyle(fontSize: 16),),
              const SizedBox(height: 40,),
              
              ListView.builder(
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      color: Colors.green,
                      child: ListTile(
                         leading: CircleAvatar(radius: 30, child: Image.asset("assets/images/image_2022_04_20T07_11_21_942Z.png"),)
                      ),
                    );
                  })
            ],
          ),
        ),
      ),
    );
  }
}

