
import 'package:fl_components/widgets/widgets.dart';
import 'package:flutter/material.dart';

class InputScreen extends StatelessWidget {
   
  const InputScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {

    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

    final Map<String, String> formValues = {
      'first_name': 'Wilmer',
      'last_name': 'Sanchez',
      'email': 'wiltec32@gmail.com',
      'password': '123456',
      'role': 'Admin'
    };

    return Scaffold(
      appBar: AppBar(
        title: const Text('Inputs y form'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Form(
            key: myFormKey,

            child: Column(
              children:  [
          
                CustomInputField(
                  labelText: 'Nombre',
                  hintText: 'Nombre del usuario',
                  counterText: '10 caracteres',
                  helperText: 'Nombreee', 
                  formProperty: 'first_name', 
                  formValues: formValues,
                ),
                const SizedBox(height: 30,),
                CustomInputField(
                  labelText: 'Apellido',
                  hintText: 'Apellido del usuario',
                  textInputType: TextInputType.name,                
                  formProperty: 'last_name', 
                  formValues: formValues,
                ),
                const SizedBox(height: 30,),
                CustomInputField(
                  labelText: 'Correo',
                  hintText: 'Correo del usuario',
                  textInputType: TextInputType.emailAddress,
                  formProperty: 'email', 
                  formValues: formValues,
                ),
                const SizedBox(height: 30,),
                CustomInputField(
                  labelText: 'Contraseña',
                  hintText: 'Contraseña del usuario',
                  obscureText: true,
                  formProperty: 'password', 
                  formValues: formValues,
                ),
                const SizedBox(height: 30,),

                DropdownButtonFormField<String>(
                  items: const [
                    DropdownMenuItem( value: 'Admin', child: Text('Admin')),
                    DropdownMenuItem( value: 'Superuser', child: Text('Superuser')),
                    DropdownMenuItem( value: 'Develop', child: Text('Develop')),
                    DropdownMenuItem( value: 'DevelopJR', child: Text('DevelopJR')),
                    
                  ], 
                  onChanged: (value){
                    print(value);
                    formValues['role'] = value ?? 'Admin';
                  }
                ),

                ElevatedButton(
                  onPressed: () {
                    FocusScope.of(context).requestFocus(FocusNode());
                    if ( !myFormKey.currentState!.validate()){
                      print('Formulario no valido');
                      return;
                    }
                    print(formValues);
                  }, 
                  child: const SizedBox(
                    width: double.infinity,
                    child: Center(child: Text('Guardar'))
                  )
                )
          
              ],
            ),
          ),
        ),
      ),
    );
  }
}

