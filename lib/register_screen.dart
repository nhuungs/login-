import 'package:flutter/material.dart';
import 'package:login_register_ui/login_sreen.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.fromLTRB(35,108, 35, 335),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Register", style: TextStyle(color: Colors.green, fontSize: 32, fontWeight: FontWeight.bold)),
                const SizedBox(height: 16,),
                RichText(
                    text:const TextSpan(
                        children: [
                          TextSpan(text: "Create an ", style: TextStyle(color: Colors.black, fontSize: 16)),
                          TextSpan(text: "account ", style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold, fontSize: 16), ),
                          TextSpan(text: "to access all the features of ", style:TextStyle(color: Colors.black, fontSize: 16)),
                          TextSpan(text: "My App! ", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16), ),
                    ]
                  )
                ),
                const SizedBox(height: 40,),
                const Text("Email"),
                const SizedBox(height: 10,),
                const TextField(
                  obscureText: true,
                  textInputAction: TextInputAction.done,
                  decoration: InputDecoration(
                      prefixIcon:Icon(Icons.alternate_email, color: Colors.green,),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        borderSide: BorderSide(width: 1.5,color: Colors.green),
                      ),
                      hintText: "ex:abc@example.com"
                  ),
                ),
                const SizedBox(height: 30,),
                const Text("Password"),
                const SizedBox(height: 10,),
                const TextField(
                  obscureText: true,
                  textInputAction: TextInputAction.done,
                  decoration: InputDecoration(
                    // border: OutlineInputBorder(borderRadius: BorderRadius.circular(15.0), borderSide: const BorderSide(color: Colors.green)),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      borderSide: BorderSide(width: 1.5,color: Colors.green),
                    ),
                    prefixIcon: Icon(Icons.lock_outline ,color: Colors.green),
                    hintText: "Password",
                      suffixIcon: Icon(Icons.visibility_off, color: Colors.green,)
                  ),
                ),
                const SizedBox(height: 30,),
                const Text("Confirm Password"),
                const SizedBox(height: 10,),
                const TextField(
                  obscureText: true,
                  textInputAction: TextInputAction.done,
                  decoration: InputDecoration(
                    // border: OutlineInputBorder(borderRadius: BorderRadius.circular(15.0), borderSide: const BorderSide(color: Colors.green)),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      borderSide: BorderSide(width: 1.5,color: Colors.green),
                    ),
                    prefixIcon: Icon(Icons.lock_outline ,color: Colors.green),
                    hintText: "Confirm Password",
                      suffixIcon: Icon(Icons.visibility_off, color: Colors.green,)
                  ),
                ),
                const SizedBox(height: 50),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text("Register"),
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size.fromHeight(56),
                    textStyle: const TextStyle(fontSize: 20),
                    primary: Colors.green,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),                    ),
                ),
                const SizedBox(height: 15),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context)=>const LoginScreen()));
                    },
                  child: Center(
                    child: RichText(
                      text: const TextSpan(
                          children: [
                            TextSpan(text: "Already have an Account? ", style: TextStyle(color: Colors.black, fontSize: 16)),
                            TextSpan(text: "Login", style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold, fontSize: 16))
                          ]
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        )
    );
  }
}
