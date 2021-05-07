import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:io';

class LawScreen extends StatefulWidget {
  static String routeName = '/law';

  @override
  _LawScreenState createState() => _LawScreenState();
}

String assetPDFPath = "";
bool isLoading = false;



Future<File>getFile(String asset) async{
  try{
    var data = await rootBundle.load(asset);
    var byte = data.buffer.asUint8List();
    var dir =  await getApplicationDocumentsDirectory();
    File file = File('${dir.path}/src.pdf');
    File assetFile = await file.writeAsBytes(byte);
    return assetFile;
  }catch(e){
    throw Exception('Error opening the file');
  }
}

class _LawScreenState extends State<LawScreen> {

  @override
  void initState(){
    super.initState();
    getFile('assets/pdf/src.pdf').then((value) =>{
      setState((){
        assetPDFPath = value.path;
        isLoading=false;
      })
    });
  }


  @override
  Widget build(BuildContext context) {
    return isLoading ? CircularProgressIndicator() :  Scaffold(
      appBar: AppBar(
        title: Text('Constitutions'),
        centerTitle: true,
      ),
      body: PDFView(
       filePath: assetPDFPath,
      ),
    );
  }
}
