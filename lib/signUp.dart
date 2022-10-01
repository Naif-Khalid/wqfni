import 'package:flutter/material.dart';
import 'package:wqfni_v9/login.dart';

class signUp extends StatefulWidget {
   const signUp({super.key});

  @override
  State<signUp> createState() => _signUpState();
}

class _signUpState extends State<signUp> {
  bool passwordVisible = true;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        //resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        body: Container(
          width: size.width,
          height: size.height,
          alignment: Alignment.center,
          child: Stack(children: [
            Positioned(
                child: Container(
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/road3.png'),
                          alignment: Alignment.centerRight,),),
                ),),
            SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: size.height * 0.07),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        //width: size.width*0.47,
                        //height: size.height*0.23,

                        alignment: Alignment.center,
                        decoration: BoxDecoration(boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.4),
                            spreadRadius: -20,
                            blurRadius: 50,
                            offset: const Offset(0, 10),
                          ),
                        ],),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: SizedBox.fromSize(
                            size: const Size.fromRadius(87), // Image radius
                            child: Image.asset(
                              'assets/signup_logo.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: size.height * 0.05,
                  ),
                  SizedBox(
                    width: size.width * 0.56,
                    child: Column(
                      children: [
                        const TextField(
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                              hintText: 'Username',
                              hintStyle:
                              TextStyle(fontSize: 17, color: Colors.grey),
                              contentPadding: EdgeInsets.only(top: 20),),
                        ),
                        const TextField(
                          keyboardType: TextInputType.phone,
                          decoration: InputDecoration(
                            hintText: '5xxxxxxxx',
                            hintStyle:
                            TextStyle(fontSize: 17, color: Colors.grey),
                            contentPadding: EdgeInsets.only(top: 20),
                            suffixIcon: Icon(
                              Icons.phone_iphone_rounded,
                              color: Color.fromRGBO(155, 98, 253, 1),
                            ),
                          ),
                        ),
                        TextField(
                          obscureText: passwordVisible,
                          decoration: InputDecoration(
                            hintText: 'Password',
                            hintStyle:
                            const TextStyle(fontSize: 17, color: Colors.grey),
                            contentPadding: const EdgeInsets.only(top: 20),
                            suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  passwordVisible = !passwordVisible;
                                });
                              },
                              icon: Icon(passwordVisible
                                  ? Icons.visibility
                                  : Icons.visibility_off,),
                              color: const Color.fromRGBO(155, 98, 253, 1),
                            ),
                          ),
                        ),
                        const TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            hintText: 'Password Confirm',
                            hintStyle:
                            TextStyle(fontSize: 17, color: Colors.grey),
                            contentPadding: EdgeInsets.only(top: 20),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.045,
                  ),
                  SizedBox(
                    width: size.width * 0.57,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            const Text(
                              "do you have an account?",
                              style:
                              TextStyle(color: Colors.grey, fontSize: 13),
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const Wqfni(),),
                                );
                              },
                              child: const Text(
                                ' Sign In',
                                style: TextStyle(
                                    color: Color.fromRGBO(155, 98, 253, 1),),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                shape: const CircleBorder(),
                                padding: const EdgeInsets.all(0)),
                            child: Image.asset(
                              'assets/facebook.png',
                              fit: BoxFit.fill,
                              width: 40,
                              height: 40,
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            style: ButtonStyle(
                              backgroundColor:
                              MaterialStateProperty.all(Colors.white),
                              shape: MaterialStateProperty.all(
                                  const CircleBorder(),),
                              padding: MaterialStateProperty.all(
                                  const EdgeInsets.all(0)),
                            ),
                            child: Image.asset(
                              'assets/google.png',
                              fit: BoxFit.cover,
                              width: 40,
                              height: 40,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: size.width * 0.10,
                  ),
                  SizedBox(
                    width: size.width*0.60,
                    height: size.height*0.064,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              const Color.fromRGBO(155, 98, 253, 1),),
                          foregroundColor: MaterialStateProperty.all(
                              const Color.fromRGBO(255, 255, 255, 1),),

                          elevation: MaterialStateProperty.all(10),
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18),),),),
                      child: const Text(
                        'Sign Up',
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.w300,),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],),
        ),
      ),
    );
  }
}
