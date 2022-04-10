import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:meeja/App%20Theme/app_theme.dart';
import 'package:meeja/Widgets/Button/my_button.dart';
import 'package:meeja/Widgets/Headings/heading.dart';
import 'package:meeja/Widgets/Padding/padding.dart';
import 'package:meeja/Widgets/TextButton/text_button.dart';
class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String dropdownValue = 'Select';
  String dropdownAlertValue1 = 'Followers';
  String dropdownAlertValue2 = 'Groups';
  bool flag = false;
  int? max;
  double? _value=0;
  String slider="";

  String para1 =
      ''' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque nisl eros, 
pulvinar facilisis justo mollis, auctor consequat urna. Morbi a bibendum metus. 
Donec scelerisque sollicitudin enim eu venenatis. Duis tincidunt laoreet ex, 
in pretium orci vestibulum eget. Class aptent taciti sociosqu ad litora torquent
per conubia nostra, per inceptos himenaeos. Duis pharetra luctus lacus ut 
vestibulum. Maecenas ipsum lacus, lacinia quis posuere ut, pulvinar vitae dolor.
Integer eu nibh at nisi ullamcorper sagittis id vel leo. Integer feugiat 
faucibus libero, at maximus nisl suscipit posuere. Morbi nec enim nunc. 
Phasellus bibendum turpis ut ipsum egestas, sed sollicitudin elit convallis. 
Cras pharetra mi tristique sapien vestibulum lobortis. Nam eget bibendum metus, 
non dictum mauris. Nulla at tellus sagittis, viverra est a, bibendum metus.  ''';
 final TextEditingController  _reviewController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: PrimaryColor,
        title: Center(
          child: Image.asset(
            "images/meeja.png",
            scale: 3.2,
          ),
        ),
        elevation: 0,
        leading: Padding(
          padding: EdgeInsets.all(8),
          child: Container(
            width: 60,
            height: 60,
            child: Icon(
              Icons.arrow_back_outlined,
              color: Colors.black,
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
          ),
        ),
        actions: [
          Icon(
            Icons.notifications_active_outlined,
            color: Colors.black,
          ),
          SizedBox(
            width: 10,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Heading(name: "The Physcology of Money"),
            Padding(
                padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text("Morgan Husal"),
                        Text(
                          "(Author)",
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                    DropdownButton<String>(
                      value: dropdownValue,
                      icon: const Icon(
                        Icons.arrow_drop_down_outlined,
                        color: Colors.black,
                      ),
                      elevation: 0,
                      style: const TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
                      onChanged: (String? newValue) {
                        setState(() {
                          dropdownValue = newValue!;
                        });
                      },
                      items: <String>['Select', 'Two', 'Free', 'Four']
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    )
                  ],
                )),
            Padding(
              padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
              child: Container(
                width: 400,
                height: 300,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("images/book-removebg-preview.png")),
                    color: HexColor("#728a7c"),
                    borderRadius: BorderRadius.circular(15)),
              ),
            ),
            Heading(name: "Description"),
            Padding(
                padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                child: flag
                    ? Text(
                        para1,
                        maxLines: 5,
                        overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontSize: 18,color: Colors.grey)
                      )
                    : Text(para1,style: TextStyle(fontSize: 18,color: Colors.grey),)),
            TextButton(
                onPressed: () {
                  setState(() {
                    flag = !flag;
                  });
                  print(flag);
                },
                child: Text(
                  "Learn More...",
                  style: TextStyle(color: Colors.red),
                )),
            MyPadding(
              left: 15,
              right: 15,
              widget: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MyButton(name: 'Add to Read', func: () {}),
                  SizedBox(
                    width: 5,
                  ),
                  MyButton(name: 'Recommend Item', func: () {}),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 60,
                    height: 60,
                    child: IconButton(
                      icon: Icon(
                        Icons.comment,
                        color: Colors.redAccent,
                      ),
                      onPressed: () {

                    showAlertDialog(context);

                      },
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                  ),
                ],
              ),
            ),
            Heading(name: "Who have Read ?"),
            Padding(
                padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [

                      Row(
                        children: [
                          Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.all(10),
                                child: Container(
                                  width: 50,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(image: AssetImage("images/zuck.jfif")),
                                      color: Colors.red,
                                      shape: BoxShape.circle),
                                ),
                              ),
                              Padding(
                                  padding: EdgeInsets.all(2),
                                  child: Text("hello"))
                            ],
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.all(10),
                                child: Container(
                                  width: 50,
                                  height: 50,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(image: AssetImage("images/zuck.jfif")),
                                      color: Colors.red,
                                      shape: BoxShape.circle),
                                ),
                              ),
                              Padding(
                                  padding: EdgeInsets.all(2),
                                  child: Text("hello"))
                            ],
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.all(10),
                                child: Container(
                                  width: 50,
                                  height: 50,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(image: AssetImage("images/zuck.jfif")),
                                      color: Colors.red,
                                      shape: BoxShape.circle),
                                ),
                              ),
                              Padding(
                                  padding: EdgeInsets.all(2),
                                  child: Text("hello"))
                            ],
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.all(10),
                                child: Container(
                                  width: 50,
                                  height: 50,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(image: AssetImage("images/zuck.jfif")),
                                      color: Colors.red,
                                      shape: BoxShape.circle),
                                ),
                              ),
                              Padding(
                                  padding: EdgeInsets.all(2),
                                  child: Text("hello"))
                            ],
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.all(10),
                                child: Container(
                                  width: 50,
                                  height: 50,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(image: AssetImage("images/zuck.jfif")),
                                      color: Colors.red,
                                      shape: BoxShape.circle),
                                ),
                              ),
                              Padding(
                                  padding: EdgeInsets.all(2),
                                  child: Text("hello"))
                            ],
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.all(10),
                                child: Container(
                                  width: 50,
                                  height: 50,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(image: AssetImage("images/zuck.jfif")),
                                      color: Colors.red,
                                      shape: BoxShape.circle),
                                ),
                              ),
                              Padding(
                                  padding: EdgeInsets.all(2),
                                  child: Text("hello"))
                            ],
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.all(10),
                                child: Container(
                                  width: 50,
                                  height: 50,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(image: AssetImage("images/zuck.jfif")),
                                      color: Colors.red,
                                      shape: BoxShape.circle),
                                ),
                              ),
                              Padding(
                                  padding: EdgeInsets.all(2),
                                  child: Text("hello"))
                            ],
                          )
                        ],
                      ),

                    ],
                  ),
                )),
            MyPadding(
              right: 10,
              left: 10,
              widget: Row(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 150,
                        child: Row(
                          children: [
                            Heading(
                              name: "Reviews",
                            ),
                            Text(
                              "(",
                              style: TextStyle(fontSize: 10),
                            ),
                            Icon(
                              Icons.star,
                              size: 10,
                              color: Colors.redAccent,
                            ),
                            Text(
                              "100%",
                              style: TextStyle(fontSize: 10),
                            ),
                            Text(
                              ")",
                              style: TextStyle(fontSize: 10),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Row(
                        children: [
                          MyTextButton(
                            name: "Add Reviews",
                            func: () {},
                          ),
                          MyTextButton(
                            name: "See All",
                            func: () {},
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                    child: Stack(
                      children: <Widget>[
                        Container(
                          width: 220,
                          height: 140,
                          decoration: BoxDecoration(
                              color: Colors.white70,
                              borderRadius: BorderRadius.circular(10)),
                        ),
                        Positioned(
                          left: 10,
                          top: 10,
                          child: CircleAvatar(
                            radius: 20,
                            backgroundImage: AssetImage("images/zuck.jfif"),
                          ),
                        ),
                        Positioned(
                            left: 60,
                            top: 20,
                            child: Text(
                              "Jhon",
                              style: TextStyle(fontSize: 18),
                            )),
                        Positioned(left: 150, top: 20, child: Text("16/32022")),
                        Positioned(
                            left: 50,
                            top: 40,
                            child: Icon(
                              Icons.star,
                              size: 20,
                              color: Colors.redAccent,
                            )),
                        Positioned(left: 70, top: 44, child: Text("Good")),
                        Positioned(
                          left: 50,
                          top: 80,
                          child: Text(
                            "i love this book . The \n book is very funny to \n read ",
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                    child: Stack(
                      children: <Widget>[
                        Container(
                          width: 220,
                          height: 140,
                          decoration: BoxDecoration(
                              color: Colors.white70,
                              borderRadius: BorderRadius.circular(10)),
                        ),
                        Positioned(
                          left: 10,
                          top: 10,
                          child: CircleAvatar(
                            radius: 20,
                            backgroundImage: AssetImage("images/zuck.jfif"),
                          ),
                        ),
                        Positioned(
                            left: 60,
                            top: 20,
                            child: Text(
                              "Jhon",
                              style: TextStyle(fontSize: 18),
                            )),
                        Positioned(left: 150, top: 20, child: Text("16/32022")),
                        Positioned(
                            left: 50,
                            top: 40,
                            child: Icon(
                              Icons.star,
                              size: 20,
                              color: Colors.redAccent,
                            )),
                        Positioned(left: 70, top: 44, child: Text("Good")),
                        Positioned(
                          left: 50,
                          top: 80,
                          child: Text(
                            "i love this book . The \n book is very funny to \n read ",
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                    child: Stack(
                      children: <Widget>[
                        Container(
                          width: 220,
                          height: 140,
                          decoration: BoxDecoration(
                              color: Colors.white70,
                              borderRadius: BorderRadius.circular(10)),
                        ),
                        Positioned(
                          left: 10,
                          top: 10,
                          child: CircleAvatar(
                            radius: 20,
                            backgroundImage: AssetImage("images/zuck.jfif"),
                          ),
                        ),
                        Positioned(
                            left: 60,
                            top: 20,
                            child: Text(
                              "Jhon",
                              style: TextStyle(fontSize: 18),
                            )),
                        Positioned(left: 150, top: 20, child: Text("16/32022")),
                        Positioned(
                            left: 50,
                            top: 40,
                            child: Icon(
                              Icons.star,
                              size: 20,
                              color: Colors.redAccent,
                            )),
                        Positioned(left: 70, top: 44, child: Text("Good")),
                        Positioned(
                          left: 50,
                          top: 80,
                          child: Text(
                            "i love this book . The \n book is very funny to \n read ",
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                    child: Stack(
                      children: <Widget>[
                        Container(
                          width: 220,
                          height: 140,
                          decoration: BoxDecoration(
                              color: Colors.white70,
                              borderRadius: BorderRadius.circular(10)),
                        ),
                        Positioned(
                          left: 10,
                          top: 10,
                          child: CircleAvatar(
                            radius: 20,
                            backgroundImage: AssetImage("images/zuck.jfif"),
                          ),
                        ),
                        Positioned(
                            left: 60,
                            top: 20,
                            child: Text(
                              "Jhon",
                              style: TextStyle(fontSize: 18),
                            )),
                        Positioned(left: 150, top: 20, child: Text("16/32022")),
                        Positioned(
                            left: 50,
                            top: 40,
                            child: Icon(
                              Icons.star,
                              size: 20,
                              color: Colors.redAccent,
                            )),
                        Positioned(left: 70, top: 44, child: Text("Good")),
                        Positioned(
                          left: 50,
                          top: 80,
                          child: Text(
                            "i love this book . The \n book is very funny to \n read ",
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            MyPadding(
              widget: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Heading(name: "Similar Items"),
                  MyTextButton(name: "See All", func: () {})
                ],
              ),
            ),
            MyPadding(
              left: 15,
              right: 15,
              widget: Container(
                width: 400,
                height: 200,
                child: Stack(
                  children: [
                    Positioned(
                      left: 10,
                      top: 20,
                      bottom: 10,
                      child: Container(
                        width: 200,
                        height: 200,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                    "images/book-removebg-preview.png")),
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(15)),
                      ),
                    ),
                    Positioned(
                      left: 220,
                      top: 20,
                      child: Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.redAccent,
                          ),
                          Text("100%", style: TextStyle(fontSize: 30))
                        ],
                      ),
                    ),
                    Positioned(
                        left: 220,
                        top: 60,
                        child: Row(
                          children: [
                            Text(
                              "57 users read",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            )
                          ],
                        )),
                    Positioned(
                        left: 220,
                        top: 90,
                        child: Row(
                          children: [
                            Text(
                              "helo jdjdjd jfjfjfj jdjdjd\n djdjdjjdjdjdjdjjd \n kdkdkdkdk",
                              style: TextStyle(),
                            )
                          ],
                        ))
                  ],
                ),
                decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(15)),
              ),
            ),
          ],
        ),
      ),
    );
  }



  showAlertDialog(BuildContext context) {
    // Create button
    Widget okButton = MyButton(name: "Ok", func: () {
      print(dropdownAlertValue1);
      print(dropdownAlertValue2);
      print(slider);
      print(_reviewController.text);
      Navigator.of(context).pop();

    },);
    Widget cancelButton =MyButton(name: "Cancel", func: (){


      Navigator.of(context).pop();

    });


    Widget TextForm =Container(decoration:
        BoxDecoration(borderRadius: BorderRadius.circular(20)),
        child:  TextFormField(
          controller: _reviewController,
    keyboardType: TextInputType.multiline,
    maxLines: null,
    minLines:10,
    decoration: InputDecoration(

    filled: true,
    hintText: "Write here..  ",
    border: InputBorder.none,
    ),
    ));
    // Create AlertDialog



    // show the dialog
    showDialog(
      context: context,
      builder:(context)=>StatefulBuilder (
        builder:(context,setState) {
        return  AlertDialog(

          title: Text("Share your Reviews"),
          content: Container(
            width: 300,height: 100,
            child: SingleChildScrollView(
              child: Column(children: [

                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  DropdownButton<String>(
                    value: dropdownAlertValue1,
                    icon: const Icon(
                      Icons.arrow_drop_down_outlined,
                      color: Colors.black,
                    ),
                    elevation: 0,
                    style: const TextStyle(color: Colors.black),
                    onChanged: (String? newValue) {
                      setState(() {
                        dropdownAlertValue1= newValue!;

                      });
                    },
                    items: <String>['Followers', 'Friends', 'Users', 'People']
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                  DropdownButton<String>(
                    value: dropdownAlertValue2,
                    icon: const Icon(
                      Icons.arrow_drop_down_outlined,
                      color: Colors.black,
                    ),
                    elevation: 0,
                    style: const TextStyle(color: Colors.black),
                    onChanged: (String? newValue) {
                      setState(() {
                        dropdownAlertValue2 = newValue!;
                      });
                    },
                    items: <String>['Groups', 'Chats', 'Call', 'Voice']
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  )

                ],),
                Slider(activeColor: Colors.redAccent,
                  min: 0,
                  max: 100,
                  divisions:10 ,
                  value: _value!,
                  onChanged: (value) {
                    setState(() {
                      _value = value;
                      print(_value);


                      if (value>=0 && value<=20.0)
                      {

                        slider="Terrible";
                        print(slider);
                      }
                      else  if (value>=20 && value<=40)
                      {

                        slider="ok";
                        print(slider);
                      }
                      else  if (value>=40.0 && value<=60)
                      {

                        slider="Good";
                        print(slider);
                      }  else  if (value>=80 && value<=100)
                      {

                        slider="very good";
                        print(slider);
                      }



                    });
                    this.setState(() {

                    });
                  },
                )




              ],),
            ),
          ),
          actions: [
            TextForm,
Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
  children: [okButton,
  cancelButton,],)
,
          ],
        );;
      },
    ));
  }
}
