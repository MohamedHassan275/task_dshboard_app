part of 'home_cubit.dart';

@immutable
abstract class HomeState {}

class HomeInitial extends HomeState {}


class UserContentLoadingState extends HomeState {}
class UserContentSuccessfullyState extends HomeState {}
class UserContentErrorState extends HomeState {}
