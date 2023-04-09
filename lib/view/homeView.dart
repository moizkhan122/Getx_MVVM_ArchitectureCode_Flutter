
import 'package:flutter/material.dart';
import 'package:flutter_application_1/data/responce/Status.dart';
import 'package:flutter_application_1/model/UserListModel/UserListModel.dart';
import 'package:flutter_application_1/view_model/Controller/home/homeViewModel.dart';
import 'package:get/get.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {

  final userlistApi = Get.put(HomeViewModel());

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    userlistApi.homeuserApi();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx((){
        switch (userlistApi.rxRequestStatus.value) {
          case Status.LOADING:
            return const Center(child: CircularProgressIndicator());
          case Status.ERROR:
            return  Center(child: Text("Some Thing Went Wrong",style: Theme.of(context).textTheme.displayMedium,));
          case Status.COMPLETE:
            return ListView.builder(
              itemCount: userlistApi.userlist.value.data!.length,
              itemBuilder:(context, index) {
              return Card(
                child: ListTile(
                  leading: CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage(userlistApi.userlist.value.data![index].avatar.toString())),
                  title: Text(userlistApi.userlist.value.data![index].firstName.toString(),style: Theme.of(context).textTheme.headlineMedium,),
                  subtitle: Text(userlistApi.userlist.value.data![index].email.toString(),style: Theme.of(context).textTheme.headlineSmall,),
                ),);
            },);
        }
      }),
    );
  }
}