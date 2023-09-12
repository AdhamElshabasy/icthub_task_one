import 'package:flutter/material.dart';
import 'package:task_one/app_api/user_model.dart';
import 'package:task_one/app_api/api_service.dart';
import 'package:task_one/widgets/containers.dart';

//-------------------------------------------------------------------------//

class ApiListScreen extends StatefulWidget {
  const ApiListScreen({Key? key}) : super(key: key);

  @override
  State<ApiListScreen> createState() => _ApiListScreenState();
}

class _ApiListScreenState extends State<ApiListScreen> {
  late List<UserModel>? userModel = [];
  @override
  void initState() {
    super.initState();
    _getData();
  }

  void _getData() async {
    userModel = (await ApiService().getUsers())!;
    Future.delayed(const Duration(seconds: 1)).then((value) => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "API List Screen",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: userModel == null || userModel!.isEmpty
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : ListView.separated(
              padding: const EdgeInsets.all(12),
              itemCount: userModel!.length,
              itemBuilder: (context, index) {
                return ApiListContainer(
                    id: userModel![index].id.toString(),
                    name: userModel![index].name,
                    email: userModel![index].email);
              },
              separatorBuilder: (BuildContext context, int index) =>
                  const Divider(),
            ),
    );
  }
}
