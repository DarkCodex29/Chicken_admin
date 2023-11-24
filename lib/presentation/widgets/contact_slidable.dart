import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class ContactSlidable{
  Slidable getSlidable () =>  Slidable(
    key: const ValueKey(0),
    startActionPane:  ActionPane(
      motion: const ScrollMotion(),
      dismissible: DismissiblePane(onDismissed: (){}), 
      children: [
      SlidableAction(
        onPressed: (context) {
                  
        },
        backgroundColor: const Color(0xFFFE4A49),
        foregroundColor: Colors.white,
        icon: Icons.delete,
        label: 'Delete',
      ),]),
    endActionPane: ActionPane(
      motion: const ScrollMotion(), 
      children: [
      SlidableAction(

        flex: 2,
        onPressed: (context) {
          
        },
        backgroundColor: const Color(0xFF7BC043),
        foregroundColor: Colors.white,
        icon: Icons.call,
        label: 'Archive',
      ),

      ]) ,
    child: const Column(
      children: [
        Text('Contact'),
        Text('Number'),
      ],
    ),
    );
}