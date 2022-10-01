import 'package:flutter/material.dart';

class ReservationPage1 extends StatefulWidget {
  const ReservationPage1({super.key});

  @override
  State<ReservationPage1> createState() => _ReservationPage1State();

}
bool visibilityPlace=false;
bool visibilityChooseDate=false;
bool visibilityChoosePlace=false;

class _ReservationPage1State extends State<ReservationPage1> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return MaterialApp(

      debugShowCheckedModeBanner: false,
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: const Color.fromRGBO(155, 98, 253, 1),
        body: SizedBox(
          width: size.width,
          height: size.height,
          child: Stack(
            children: [
              Positioned(
                  child: Container(
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/Group 63.png'),
                          alignment: Alignment.centerRight,),
                    ),
                    margin: const EdgeInsets.only(right: 15),
                  ),),
              Column(
                children: [
                  SizedBox(
                    height: size.height * 0.015,
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
                              color:
                              Colors.white,
                              size: 25,
                            ),),

                      ],
                    ),
                  ),
                  SizedBox(height: size.height*0.015,),
                  Container(
                    width: size.width*0.75,
                    alignment: Alignment.centerLeft,
                    child: const Text("Hello,there\nWelcome",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 40,
                          color: Colors.white,
                      ),),
                  ),
                  SizedBox(
                    height: size.height*0.025,
                  ),
                  Container(
                    alignment: Alignment.center,

                    child: SizedBox(
                      width: size.width*0.85,
                      height: size.height*0.07,
                      child: ElevatedButton.icon(

                        onPressed: () {
                          setState(() {
                           visibilityPlace= visibilityPlace==false? true:false;
                           visibilityChoosePlace==true?
                           visibilityChoosePlace=false:null;
                           visibilityChooseDate==true?
                           visibilityChooseDate=false:null;
                          });
                        },
                        icon: const Icon(Icons.arrow_drop_down_circle,),
                        label: const Text(
                          'Choose your place',
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.w600,),

                        ),
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                                Colors.white,),
                            foregroundColor: MaterialStateProperty.all(
                                const Color.fromRGBO(155, 98, 253, 1),),

                            elevation: MaterialStateProperty.all(10),
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30),),
                            ),

                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: size.height*0.01,
                  ),
                  Visibility(
                    visible: visibilityPlace,
                    child: Container(
                      width: size.width*0.84,
                      height: size.height*0.26,

                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(20))
                      ),
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            TextButton(
                                onPressed: (){
                                  setState(() {
                                    visibilityPlace= visibilityPlace==false? true:false;


                                    visibilityChoosePlace= visibilityChoosePlace==false? true:false;
                                  });
                                },
                                child: const Text('Riyadh Front',
                                style: TextStyle(
                                  color: Color.fromRGBO(100,100,100, 1),
                                  fontSize: 24,
                                  fontWeight: FontWeight.w600,

                                ),),),
                            Stack(
                              children: [
                                Positioned(

                                  child: Container(
                                    height: 1,
                                    width: size.width,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                            TextButton(
                              onPressed: (){},
                              child: const Text('Riyadh Park',
                                style: TextStyle(
                                  color: Color.fromRGBO(160,160,160, 1),
                                  fontSize: 24,
                                  fontWeight: FontWeight.w600,

                                ),),),
                            Stack(
                              children: [
                                Positioned(

                                  child: Container(
                                    height: 1,
                                    width: size.width,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                            TextButton(
                              onPressed: (){},
                              child: const Text('Events meddle east',
                                style: TextStyle(
                                  color: Color.fromRGBO(160,160,160, 1),
                                  fontSize: 24,
                                  fontWeight: FontWeight.w600,

                                ),),),
                            Stack(
                              children: [
                                Positioned(

                                  child: Container(
                                    height: 1,
                                    width: size.width,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      )

                  ),),
                  SizedBox(
                    height: size.height*0.02,
                  ),
                  Visibility(
                    visible: visibilityChoosePlace,
                    child: SizedBox(
                      width: size.width*0.85,
                      height: size.height*0.07,

                      child: ElevatedButton.icon(
                        onPressed: () {
                          setState(() {
                            visibilityChooseDate= visibilityChooseDate==false? true:false;
                          });
                        },
                        icon: const Icon(Icons.arrow_drop_down_circle,),
                        label: const Text(
                          'Choose your date',
                          style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.w600,),

                        ),
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                            Colors.white,),
                          foregroundColor: MaterialStateProperty.all(
                            const Color.fromRGBO(155, 98, 253, 1),),

                          elevation: MaterialStateProperty.all(10),
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),),
                          ),

                        ),
                      ),
                    ),
                  ),
                  Visibility(
                    visible: visibilityChooseDate,
                    child: Container(
                      width: 50,
                      height: 50,
                      color: Colors.white,

                    ),),


                ],
              ),
              Container(
                alignment: Alignment.bottomCenter,

                margin: const EdgeInsets.only(bottom: 20),
                child: SizedBox(
                  width: size.width*0.65,
                  height: size.height*0.07,

                  child: ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor:
                      MaterialStateProperty.all(Colors.white),
                      foregroundColor: MaterialStateProperty.all(
                        const Color.fromRGBO(155, 98, 253, 1),),

                      elevation: MaterialStateProperty.all(10),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius:
                          BorderRadius.circular(18),),),),
                    child: const Text(
                      'Continue',
                      style: TextStyle(
                        fontSize: 26, fontWeight: FontWeight.w400,),
                    ),
                  ),
                ),
              )
            ],

          ),
        ),
      ),
    );
  }

}
