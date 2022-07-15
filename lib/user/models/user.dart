import 'dart:html';

import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class User extends Equatable {
  User({
    required this.id,
    required this.name,
    required this.login,
    required this.avatar_url,
    required this.bio,
    required this.created_at,
    required this.public_repos,
    required this.followers,
    required this.following,
    required this.twitter_username,
    required this.company,
    required this.blog,
    required this.location,
  });
  final String id;
  final String name;
  final String login;
  final String avatar_url;
  final String bio;
  final String created_at;
  final String public_repos;
  final String followers;
  final String following;
  final String twitter_username;
  final String company;
  final String blog;
  final String location;

  @override
  List<Object> get props => [
        id,
        name,
        login,
        avatar_url,
        bio,
        created_at,
        public_repos,
        followers,
        following,
        twitter_username,
        company,
        blog,
        location
      ];
  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'],
      name: json['name'],
      login: json['login'],
      avatar_url: json['avatar_url'],
      bio: json['bio'],
      created_at: json['created_at'],
      public_repos: json['public_repos'],
      followers: json['followers'],
      following: json['following'],
      twitter_username: json['twitter_username'],
      company: json['company'],
      blog: json['blog'],
      location: json['location'],
    );
  }
  @override
  String toString() =>
      'User { id:$id, created_at: $created_at,public_repos:$public_repos,followers:$followers,following:$following }';
}
