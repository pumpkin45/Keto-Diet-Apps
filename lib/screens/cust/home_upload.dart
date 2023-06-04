import 'package:flutter/material.dart';
import 'package:pmlsketodietproject/screens/cust/viewPDF.dart';

import 'cust_upload.dart';

class HomeUpload extends StatefulWidget {
  const HomeUpload({super.key});

  @override
  State<HomeUpload> createState() => _HomeUploadState();
}

class _HomeUploadState extends State<HomeUpload> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PMLS Keto Diet'),
        backgroundColor: Colors.deepOrange, //
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
      //  crossAxisAlignment: CrossAxisAlignment.center,
        children: [

          Container(
             width: MediaQuery.of(context).size.width,
          ),
        ElevatedButton(
          child: Text(
            'Upload PDFs'
            ),
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> UploadPDF()));
            },
        ),
        SizedBox(
          height: 20,
        ),
         ElevatedButton(
          child: Text(
            'View PDFs'
            ),
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> UploadPDF()));
            },
        ),
      ]),
    );
  }
}