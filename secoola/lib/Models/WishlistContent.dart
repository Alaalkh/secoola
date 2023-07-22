import 'package:flutter/material.dart';
class WishlistContent {

  String title;
  String tutorname;

  WishlistContent({required this.title, required this.tutorname});
}

List<WishlistContent> WishlistContents = [
  WishlistContent(
      title: 'Gather User Research...',
      tutorname: 'Brooklyn Simmons',
  ),
  WishlistContent(
    title: 'User Behaviour Resea...',
    tutorname: 'Esther Howard',
  ),
  WishlistContent(
    title: 'UX Basic 101 - Summ...',
    tutorname: 'Cameron Williamson',
  ),
  WishlistContent(
    title: 'UX Deliverable Explai...',
    tutorname: 'Jacob Jones',
  ),
  WishlistContent(
    title: 'Design Thingking F...',
    tutorname: 'Dianne Russell',
  ),
  WishlistContent(
    title: 'Figma Prototyping 1...',
    tutorname: 'Savannah Nguyen',
  ),

];