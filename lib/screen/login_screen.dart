import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:inter_day12/view_model/auth_viewmodel.dart';

class LoginScreen extends HookConsumerWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    final usernameController = useTextEditingController();
    final passwordController = useTextEditingController();
    final isLoggedIn = useState(false);
    
    return Scaffold(
      appBar: AppBar(title: Text('Login Screen')),
      body: Column(
        children: [
          TextField(
            controller: usernameController,
            decoration: InputDecoration(
              hintText: 'Enter username here',
              border: OutlineInputBorder(),
            ),
          ),
          TextField(
            controller: passwordController,
            // obstructText: true,
            decoration: InputDecoration(
              hintText: 'Enter password here',
              border: OutlineInputBorder(),
            ),
          ),
          isLoggedIn.value
          ? Center(child: CircularProgressIndicator())
          : ElevatedButton(onPressed: (){
            isLoggedIn.value = true;
            try{
              ref
              .read(authViewmodelProvider.notifier)
              .login(usernameController.text, passwordController.text);
              // context.push('/products');
            }catch(e){
              ScaffoldMessenger.of(
                context
              ).showSnackBar(SnackBar(content: Text('Login error!')));
            }finally{
              isLoggedIn.value = false;
            }
          }, child: Text('Login')),
        ],
      ),
    );
  }
}