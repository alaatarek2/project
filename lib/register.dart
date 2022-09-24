import 'package:flutter/material.dart';
import 'package:untitled3/login.dart';
class Task extends StatefulWidget {
  const Task({Key? key}) : super(key: key);

  @override
  State<Task> createState() => _TaskState();
}

class _TaskState extends State<Task> {
  @override
  Widget build(BuildContext context) {
    bool isShowPass = true;
    IconData suffix = Icons.visibility;
    var formKey = GlobalKey<FormState>();
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 60.0, horizontal: 20),
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'REGISTER',
                  style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text('Register now to see our products'),
                const SizedBox(
                  height: 25,
                ),
                defaultFormField(
                    controller: emailController,
                    type: TextInputType.name,
                    validate: (value) {
                      if (value.isEmpty) {
                        return 'please write name';
                      }
                    },
                    label: 'Name',
                    prefix: Icons.person),
                const SizedBox(
                  height: 25,
                ),
                defaultFormField(
                    controller: emailController,
                    type: TextInputType.emailAddress,
                    validate: (value) {
                      if (value.isEmpty) {
                        return 'please write email';
                      }
                    },
                    label: 'Email Address',
                    prefix: Icons.email),
                const SizedBox(
                  height: 25,
                ),
                defaultFormField(
                    controller: passwordController,
                    type: TextInputType.visiblePassword,
                    validate: (value) {
                      if (value.isEmpty) {
                        return 'please write password';
                      }
                    },
                    label: 'Password',
                    prefix: Icons.lock,
                    isPassword: isShowPass,
                    suffix: suffix,
                    suffixPressed: () {
                      setState(() {
                        isShowPass = !isShowPass;
                        suffix = isShowPass
                            ? Icons.visibility
                            : Icons.visibility_off;
                      });
                    }),
                const SizedBox(
                  height: 25,
                ),
                defaultFormField(
                    controller: emailController,
                    type: TextInputType.phone,
                    validate: (value) {
                      if (value.isEmpty) {
                        return 'please write phone';
                      }
                    },
                    label: 'phone',
                    prefix: Icons.phone_android),
                const SizedBox(
                  height: 25,
                ),
                Center(
                  child: SizedBox(
                    width: 250,
                    height: 45,
                    child: MaterialButton(
                      onPressed: ()
                      {
                        {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const Task2()),
                          );
                        }
                      },
                      color: Colors.blueAccent,
                      child: const Text('Register'),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget defaultFormField({
    required TextEditingController controller,
    required TextInputType type,
    ValueChanged? onSubmit,
    ValueChanged? onChange,
    GestureTapCallback? onTap,
    bool isPassword = false,
    required FormFieldValidator validate,
    required String label,
    required IconData prefix,
    IconData? suffix,
    VoidCallback? suffixPressed,
    bool isClickable = true,
  }) =>
      TextFormField(
        controller: controller,
        keyboardType: type,
        obscureText: isPassword,
        enabled: isClickable,
        onFieldSubmitted: onSubmit,
        onChanged: onChange,
        onTap: onTap,
        validator: validate,
        decoration: InputDecoration(
          labelText: label,
          prefixIcon: Icon(
            prefix,
          ),
          suffixIcon: suffix != null
              ? IconButton(
                  onPressed: suffixPressed,
                    icon: Icon(
                suffix,
                 ),
          )
              : null,
          border: const OutlineInputBorder(),
        ),
      );
} // OutlineInputBorder
