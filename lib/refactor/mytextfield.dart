import 'package:flutter/material.dart';

class Mytextfield extends StatelessWidget {
  final IconData? icon;
  final String hinttext;
  final String type;
  const Mytextfield({super.key, required this.icon, required this.hinttext,required this.type});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 62,right: 62,),
      child: TextFormField(
         validator: (value) {
          String? emailtxt;
         String? passwordtxt;
         String? nametxt;
         String? confirmtxt;
          if (type == 'email') {
            if (value!.isEmpty || !value.contains('@')) {
               emailtxt="Enter a valid email adress";
              return emailtxt;
            }
          }
          if (type == 'name') {
            if (value!.isEmpty) {
            nametxt= "Enter Full Name";

              return nametxt;
            }
          }
          if (type== 'create') {
            if (value!.isEmpty || value.length < 7) {
            passwordtxt= "Please Enter a valid password ";

              return passwordtxt;
            }
          }

          if (type== 'confirm') {
            if (value!.isEmpty || value.length < 7) {
            confirmtxt= "Please Enter a confirm password ";

              return confirmtxt;
            }
          }
         
         

          
        },
        decoration: InputDecoration(
          hintText: hinttext,
          hintStyle: const TextStyle(color: Colors.grey, fontFamily: "ansaf"),
          contentPadding: const EdgeInsets.only(top: 5),
          prefixIcon: Icon(icon, color: Colors.black),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: const BorderSide(color: Colors.grey),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: const BorderSide(color: Colors.grey),
          ),
          focusedErrorBorder:  OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: const BorderSide(color: Colors.grey),
            
          ),
          errorBorder:  OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: const BorderSide(color: Colors.grey),
            
          ),
          
        ),
      ),
    );
  }
}
