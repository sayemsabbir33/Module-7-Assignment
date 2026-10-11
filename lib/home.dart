import 'package:flutter/material.dart';
class Home extends StatelessWidget {
  const Home({super.key});

  final List<Map<String, String>> contacts = const [
    {"name":"jawad","phone":"01587243569"},
    {"name":"Riyad","phone":"01587285930"},
    {"name":"Sayem","phone":"01587346605"},
    {"name":"Lami","phone":"015872435602"},
    {"name":"Reja","phone":"015874567706"},
    {"name":"Afrity","phone":"0158765733"},
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        centerTitle: true,
        backgroundColor: Colors.blueGrey,
        title: Text("Contact List",style: TextStyle(
          fontSize: 22,
          color: Colors.white,


        ),),
      ),
      body:Padding(
        padding: const EdgeInsets.all(18),
        child: Column(
          children: [
            TextFormField(
              initialValue: "Hasan",
              decoration: InputDecoration(
                border: OutlineInputBorder()
              ),

            ),
            SizedBox(height: 10,),
            TextFormField(
              initialValue: "0174569873",
              decoration: InputDecoration(
                  border: OutlineInputBorder()
              ),

            ),
            SizedBox(height: 10,),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(onPressed: (){},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueGrey,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)
                    )


                  ),

                  child: Text("Add")),



            ),
            SizedBox(height: 10,),
            Expanded(
              child: ListView.builder(
                itemCount: contacts.length,
                itemBuilder: (context,index) {
                  return SizedBox(
                    width: double.infinity,
                    child: Card(
                      child: ListTile(
                        title: Text(contacts[index]["name"]!,style: TextStyle(color: Colors.deepOrange),),
                        subtitle: Text(contacts[index]["phone"]!),
                        leading: Icon(Icons.person,size: 35,color:Colors.brown ,),
                        trailing: Icon(Icons.phone,color: Colors.blue,),
                      ),
                    ),
                  );
                }
              ),
            ),
          ],
        ),
      )
      ,

    );
  }
}
