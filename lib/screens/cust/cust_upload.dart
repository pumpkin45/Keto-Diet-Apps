// import 'dart:io';

// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/material.dart';
// import 'package:image_picker/image_picker.dart';
// import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
// import 'package:path/path.dart';

// class ImageUploads extends StatefulWidget {
//   ImageUploads({Key? key}) : super(key: key);

//   @override
//   _ImageUploadsState createState() => _ImageUploadsState();
// }

// class _ImageUploadsState extends State<ImageUploads> {
//   firebase_storage.FirebaseStorage storage =
//       firebase_storage.FirebaseStorage.instance;

//   File? _photo;
//   final ImagePicker _picker = ImagePicker();

//   Future imgFromGallery() async {
//     final pickedFile = await _picker.pickImage(source: ImageSource.gallery);

//     setState(() {
//       if (pickedFile != null) {
//         _photo = File(pickedFile.path);
//         uploadFile();
//       } else {
//         print('No image selected.');
//       }
//     });
//   }

//   Future imgFromCamera() async {
//     final pickedFile = await _picker.pickImage(source: ImageSource.camera);

//     setState(() {
//       if (pickedFile != null) {
//         _photo = File(pickedFile.path);
//         uploadFile();
//       } else {
//         print('No image selected.');
//       }
//     });
//   }

//   Future uploadFile() async {
//     if (_photo == null) return;
//     final fileName = basename(_photo!.path);
//     final destination = 'files/$fileName';

//     try {
//       final ref = firebase_storage.FirebaseStorage.instance
//           .ref(destination)
//           .child('file/');
//       await ref.putFile(_photo!);
//     } catch (e) {
//       print('error occured');
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(),
//       body: Column(
//         children: <Widget>[
//           SizedBox(
//             height: 32,
//           ),
//           Center(
//             child: GestureDetector(
//               onTap: () {
//                 _showPicker(context);
//               },
//               child: CircleAvatar(
//                 radius: 55,
//                 backgroundColor: Color(0xffFDCF09),
//                 child: _photo != null
//                     ? ClipRRect(
//                         borderRadius: BorderRadius.circular(50),
//                         child: Image.file(
//                           _photo!,
//                           width: 100,
//                           height: 100,
//                           fit: BoxFit.fitHeight,
//                         ),
//                       )
//                     : Container(
//                         decoration: BoxDecoration(
//                             color: Colors.grey[200],
//                             borderRadius: BorderRadius.circular(50)),
//                         width: 100,
//                         height: 100,
//                         child: Icon(
//                           Icons.camera_alt,
//                           color: Colors.grey[800],
//                         ),
//                       ),
//               ),
//             ),
//           )
//         ],
//       ),
//     );
//   }

//   void _showPicker(context) {
//     showModalBottomSheet(
//         context: context,
//         builder: (BuildContext bc) {
//           return SafeArea(
//             child: Container(
//               child: new Wrap(
//                 children: <Widget>[
//                   new ListTile(
//                       leading: new Icon(Icons.photo_library),
//                       title: new Text('Gallery'),
//                       onTap: () {
//                         imgFromGallery();
//                         Navigator.of(context).pop();
//                       }),
//                   new ListTile(
//                     leading: new Icon(Icons.photo_camera),
//                     title: new Text('Camera'),
//                     onTap: () {
//                       imgFromCamera();
//                       Navigator.of(context).pop();
//                     },
//                   ),
//                 ],
//               ),
//             ),
//           );
//         });
//   }
// }

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_document_picker/flutter_document_picker.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;

class UploadPDF extends StatefulWidget {
  // const UploadPDF({super.key});


  @override
  State<UploadPDF> createState() => _UploadPDFState();
}

class _UploadPDFState extends State<UploadPDF> {

    Future<firebase_storage.UploadTask> uploadFile(File file) async {  
  // if (file == null) {  
  //   print ('No file was picked');
  //   return null;  
  // } 

  firebase_storage.UploadTask uploadTask;  
  
  // Create a Reference to the file  
  firebase_storage.Reference ref = firebase_storage.FirebaseStorage.instance  
  .ref()  
      .child('files')  
      .child('/some-file.pdf');  
  
  final metadata = firebase_storage.SettableMetadata(  
      contentType: 'file/pdf',  
      customMetadata: {'picked-file-path': file.path});  
  print("Uploading..!");  
  
  uploadTask = ref.putData(await file.readAsBytes(), metadata);  
  
  print("done..!");  
  return Future.value(uploadTask);  
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          child: Text('Select File'),

          onPressed: () async {
            final path = await FlutterDocumentPicker.openDocument();
            print(path);
            File file = File(path!);
            firebase_storage.UploadTask task = await uploadFile(file); 
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
