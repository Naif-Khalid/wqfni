import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class profile extends StatefulWidget {
  const profile({super.key});

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    bool isSwitched = false;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: Colors.white,
          body: SizedBox(
            width: size.width,
            height: size.height,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Column(
                    children: [
                      SizedBox(
                        height: size.height * 0.030,
                      ),
                      SizedBox(
                        width: size.width * 0.93,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IconButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                icon: const Icon(
                                  Icons.arrow_back_ios_new,
                                  color: Color.fromRGBO(155, 98, 253, 1),
                                  size: 25,
                                ),),
                            IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.login_outlined,
                                  color: Color.fromRGBO(155, 98, 253, 1),
                                  size: 25,
                                ),)
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  Container(
                    width: size.width * 0.83,
                    alignment: Alignment.centerLeft,
                    child: const Text(
                      'Profile',
                      style: TextStyle(
                          fontSize: 43,
                          fontWeight: FontWeight.w900,
                          color: Color.fromRGBO(98, 98, 99, 1),),
                    ),
                  ),
                  SizedBox(
                    width: size.width * 0.83,
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 70,
                          backgroundColor: Colors.black26,
                          child: ClipOval(
                            child: Image.asset(
                              'assets/man.png',
                              fit: BoxFit.cover,
                              width: 136,
                              height: 136,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: size.width * 0.06,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: const [
                                Text(
                                  'User',
                                  style: TextStyle(
                                      fontSize: 26,
                                      fontWeight: FontWeight.w800,
                                      color: Color.fromRGBO(98, 98, 99, 1),),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: size.height * 0.012,
                            ),
                            Row(
                              children: const [
                                Text(
                                  '+966574910483',
                                  style: TextStyle(
                                      color: Color.fromRGBO(98, 98, 99, 1),
                                      fontWeight: FontWeight.w700,),
                                )
                              ],
                            ),
                            SizedBox(
                              height: size.height * 0.012,
                            ),
                            Row(
                              children: [
                                OutlinedButton(
                                  onPressed: () {},
                                  style: OutlinedButton.styleFrom(
                                      shape: const StadiumBorder(),
                                      padding: const EdgeInsets.only(
                                          bottom: 5,
                                          top: 5,
                                          left: 35,
                                          right: 35,),
                                      side: const BorderSide(
                                          color: Color.fromRGBO(
                                              155, 98, 253, 1,),),),
                                  child: const Text(
                                    'Edit',
                                    style: TextStyle(
                                        color:
                                        Color.fromRGBO(155, 98, 253, 1),
                                        fontSize: 20,),
                                  ),
                                )
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: size.width * 0.83,
                    child: Column(
                      children: [
                        SizedBox(
                          height: size.width * 0.07,
                        ),
                        Container(
                          alignment: Alignment.centerLeft,
                          child: const Text(
                            'Account',
                            style: TextStyle(
                                color: Color.fromRGBO(98, 98, 99, 1),
                                fontSize: 18,
                                fontWeight: FontWeight.w800,),
                          ),
                        ),
                        SizedBox(
                          height: size.height * 0.014,
                        ),
                        Container(
                          height: size.height * 0.25,
                          width: size.width * 0.832,
                          alignment: Alignment.centerLeft,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: const Color.fromRGBO(210, 210, 210, 1),),
                              borderRadius: const BorderRadius.all(
                                Radius.circular(20),
                              ),),
                          child: Container(
                            margin: const EdgeInsets.only(left: 35),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                //SizedBox(height: size.height * 0.0275,),
                                Container(
                                  padding: const EdgeInsets.only(top: 20, bottom: 13),
                                  child: const Text(
                                    'Username',
                                    style: TextStyle(
                                        color: Color.fromRGBO(161, 161, 161, 1),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,),
                                  ),
                                ),
                                Stack(
                                  children: [
                                    Positioned(

                                      child: Container(
                                        height: 1,
                                        width: 250,
                                        color: Colors.black.withOpacity(0.16),
                                      ),
                                    ),
                                  ],
                                ),
                                Container(
                                  padding: const EdgeInsets.only(top: 13, bottom: 13),
                                  child: const Text(
                                    '+966574921638',
                                    style: TextStyle(
                                        color: Color.fromRGBO(161, 161, 161, 1),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,),
                                  ),
                                ),
                                Stack(
                                  children: [
                                    Positioned(

                                      child: Container(
                                        height: 1,
                                        width: 250,
                                        color: Colors.black.withOpacity(0.16),
                                      ),
                                    )
                                  ],
                                ),
                                Container(
                                  padding: const EdgeInsets.only(top: 13, bottom: 13),
                                  child: const Text(
                                    'Test@gmail.com',
                                    style: TextStyle(
                                        color: Color.fromRGBO(161, 161, 161, 1),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,),
                                  ),
                                ),
                                Stack(
                                  children: [
                                    Positioned(

                                      child: Container(
                                        height: 1,
                                        width: 250,
                                        color: Colors.black.withOpacity(0.16),
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: size.height * 0.03,
                        ),
                        Container(
                          alignment: Alignment.centerLeft,
                          child: const Text(
                            'App Notification',
                            style: TextStyle(
                                color: Color.fromRGBO(98, 98, 99, 1),
                                fontSize: 18,
                                fontWeight: FontWeight.w800,),
                          ),
                        ),
                        SizedBox(
                          height: size.height * 0.014,
                        ),
                        Container(
                          height: size.height * 0.175,
                          width: size.width * 0.832,
                          alignment: Alignment.centerLeft,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: const Color.fromRGBO(210, 210, 210, 1),),
                              borderRadius: const BorderRadius.all(
                                Radius.circular(20),
                              ),),
                          child: Container(
                            margin: const EdgeInsets.only(left: 35),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      padding:
                                      const EdgeInsets.only(top: 20, bottom: 13),
                                      child: const Text(
                                        'Notification',
                                        style: TextStyle(
                                            color:
                                            Color.fromRGBO(98, 98, 99, 1),
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600,),
                                      ),
                                    ),
                                    Switch(
                                      value: isSwitched,
                                      onChanged: (value) {
                                        setState(() {
                                          isSwitched = value;
                                          if (kDebugMode) {
                                            print(isSwitched);
                                          }
                                        });
                                      },
                                      activeTrackColor:
                                      const Color.fromRGBO(232, 218, 255, 1),
                                      activeColor:
                                      const Color.fromRGBO(155, 98, 253, 1),
                                    ),
                                  ],
                                ),
                                Stack(
                                  children: [
                                    Positioned(

                                      child: Container(
                                        height: 1,
                                        width: 250,
                                        color: Colors.black.withOpacity(0.16),
                                      ),
                                    )
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      padding:
                                      const EdgeInsets.only(top: 20, bottom: 13),
                                      child: const Text(
                                        'Tracking location',
                                        style: TextStyle(
                                            color:
                                            Color.fromRGBO(98, 98, 99, 1),
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600,),
                                      ),
                                    ),
                                    Switch(
                                      value: isSwitched,
                                      onChanged: (value) {
                                        setState(() {
                                          isSwitched = value;
                                          if (kDebugMode) {
                                            print(isSwitched);
                                          }
                                        });
                                      },
                                      activeTrackColor:
                                      const Color.fromRGBO(232, 218, 255, 1),
                                      activeColor:
                                      const Color.fromRGBO(155, 98, 253, 1),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: size.height * 0.03,
                        ),
                        Container(
                          alignment: Alignment.centerLeft,
                          child: const Text(
                            'Settings',
                            style: TextStyle(
                                color: Color.fromRGBO(98, 98, 99, 1),
                                fontSize: 18,
                                fontWeight: FontWeight.w800,),
                          ),
                        ),
                        SizedBox(
                          height: size.height * 0.014,
                        ),
                        Container(
                          height: size.height * 0.225,
                          width: size.width * 0.832,
                          alignment: Alignment.centerLeft,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: const Color.fromRGBO(210, 210, 210, 1),),
                              borderRadius: const BorderRadius.all(
                                Radius.circular(20),
                              ),),
                          child: Container(
                            margin: const EdgeInsets.only(left: 35),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                //SizedBox(height: size.height * 0.0275,),
                                Container(
                                  padding: const EdgeInsets.only(top: 5, bottom: 1.5),
                                  child: TextButton(
                                    onPressed: (){},
                                    style: ButtonStyle(padding: MaterialStateProperty.all(const EdgeInsets.all(0))),
                                    child: const Text(
                                      'Change password',
                                      style: TextStyle(
                                          color: Color.fromRGBO(98, 98, 99, 1),
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600,),

                                    ),
                                  ),
                                ),
                                Stack(
                                  children: [
                                    Positioned(

                                      child: Container(
                                        height: 1,
                                        width: 250,
                                        color: Colors.black.withOpacity(0.16),
                                      ),
                                    )
                                  ],
                                ),
                                Container(
                                  padding: const EdgeInsets.only(bottom: 1.5),
                                  child: TextButton(
                                    onPressed: (){},
                                    style: ButtonStyle(padding: MaterialStateProperty.all(const EdgeInsets.all(0))),
                                    child: const Text(
                                      'Change payment options',
                                      style: TextStyle(
                                          color: Color.fromRGBO(98, 98, 99, 1),
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600,),

                                    ),
                                  ),
                                ),
                                Stack(
                                  children: [
                                    Positioned(

                                      child: Container(
                                        height: 1,
                                        width: 250,
                                        color: Colors.black.withOpacity(0.16),
                                      ),
                                    )
                                  ],
                                ),
                                Container(
                                  padding: const EdgeInsets.only(bottom: 1.5),
                                  child: TextButton(
                                    onPressed: (){},
                                    style: ButtonStyle(padding: MaterialStateProperty.all(const EdgeInsets.all(0))),
                                    child: const Text(
                                      'Language',
                                      style: TextStyle(
                                          color: Color.fromRGBO(98, 98, 99, 1),
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600,),

                                    ),
                                  ),
                                ),
                                Stack(
                                  children: [
                                    Positioned(

                                      child: Container(
                                        height: 1,
                                        width: 250,
                                        color: Colors.black.withOpacity(0.16),
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),

                        ),
                        SizedBox(
                          height: size.height * 0.03,
                        ),
                        Container(
                          alignment: Alignment.centerLeft,
                          child: const Text(
                            'Other',
                            style: TextStyle(
                                color: Color.fromRGBO(98, 98, 99, 1),
                                fontSize: 18,
                                fontWeight: FontWeight.w800,),
                          ),
                        ),
                        SizedBox(
                          height: size.height * 0.014,
                        ),
                        Container(
                          height: size.height * 0.225,
                          width: size.width * 0.832,
                          alignment: Alignment.centerLeft,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: const Color.fromRGBO(210, 210, 210, 1),),
                              borderRadius: const BorderRadius.all(
                                Radius.circular(20),
                              ),),
                          child: Container(
                            margin: const EdgeInsets.only(left: 35),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                //SizedBox(height: size.height * 0.0275,),
                                Container(
                                  padding: const EdgeInsets.only(top: 5, bottom: 1.5),
                                  child: TextButton(
                                    onPressed: (){},
                                    style: ButtonStyle(padding: MaterialStateProperty.all(const EdgeInsets.all(0))),
                                    child: const Text(
                                      'About us',
                                      style: TextStyle(
                                          color: Color.fromRGBO(98, 98, 99, 1),
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600,),

                                    ),
                                  ),
                                ),
                                Stack(
                                  children: [
                                    Positioned(

                                      child: Container(
                                        height: 1,
                                        width: 250,
                                        color: Colors.black.withOpacity(0.16),
                                      ),
                                    )
                                  ],
                                ),
                                Container(
                                  padding: const EdgeInsets.only(bottom: 1.5),
                                  child: TextButton(
                                    onPressed: (){},
                                    style: ButtonStyle(padding: MaterialStateProperty.all(const EdgeInsets.all(0))),
                                    child: const Text(
                                      'Contact',
                                      style: TextStyle(
                                          color: Color.fromRGBO(98, 98, 99, 1),
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600,),

                                    ),
                                  ),
                                ),
                                Stack(
                                  children: [
                                    Positioned(

                                      child: Container(
                                        height: 1,
                                        width: 250,
                                        color: Colors.black.withOpacity(0.16),
                                      ),
                                    )
                                  ],
                                ),
                                Container(
                                  padding: const EdgeInsets.only(bottom: 1.5),
                                  child: TextButton(
                                    onPressed: (){},
                                    style: ButtonStyle(padding: MaterialStateProperty.all(const EdgeInsets.all(0))),
                                    child: const Text(
                                      'Need help?',
                                      style: TextStyle(
                                          color: Color.fromRGBO(98, 98, 99, 1),
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600,),

                                    ),
                                  ),
                                ),
                                Stack(
                                  children: [
                                    Positioned(

                                      child: Container(
                                        height: 1,
                                        width: 250,
                                        color: Colors.black.withOpacity(0.16),
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),

                        ),
                      ],////////

                    ),

                  ),



                ],
              ),
            ),
          ),),
    );
  }
}
