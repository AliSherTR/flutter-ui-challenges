import 'package:flutter/material.dart';
import 'package:flutter_ui_challange/challenge_1/login_one.dart';
import 'package:flutter_ui_challange/common/widgets/app_button.dart';

class SignUpOne extends StatefulWidget {
  const SignUpOne({super.key});

  @override
  _SignUpOneState createState() => _SignUpOneState();
}

class _SignUpOneState extends State<SignUpOne> {
  // Controller for Date of Birth
  final TextEditingController _dobController = TextEditingController();
  DateTime? _selectedDate;

  // Country code data
  final List<Map<String, String>> _countryCodes = [
    {'code': '+1', 'flag': '🇺🇸', 'name': 'United States'},
    {'code': '+44', 'flag': '🇬🇧', 'name': 'United Kingdom'},
    {'code': '+91', 'flag': '🇮🇳', 'name': 'India'},
    // Add more countries as needed
  ];

  String _selectedCountryCode = '+1'; // Default country code

  // Function to show date picker
  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _selectedDate ?? DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
    );
    if (picked != null && picked != _selectedDate) {
      setState(() {
        _selectedDate = picked;
        _dobController.text = "${picked.day}/${picked.month}/${picked.year}";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.symmetric(vertical: 50, horizontal: 20),
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextButton(
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.all(0),
                    minimumSize: const Size(0, 0),
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  ),
                  onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LoginOne(),
                  ),
                );
              }, child: Icon(Icons.arrow_back, size: 30)),
              SizedBox(height: 20),
              Text("Sign Up", style: Theme.of(context).textTheme.headlineLarge),
              SizedBox(height: 20),
              Text(
                "Create an account to continue!",
                style: Theme.of(context).textTheme.labelSmall,
              ),
              SizedBox(height: 40),
              Text("Full Name", style: Theme.of(context).textTheme.labelSmall),
              const SizedBox(height: 3),
              TextField(
                decoration: InputDecoration(
                  hintText: "Full Name",
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 20),
              Text(
                "Email Address",
                style: Theme.of(context).textTheme.labelSmall,
              ),
              const SizedBox(height: 3),
              TextField(
                decoration: InputDecoration(
                  hintText: "Email Address",
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 20),
              Text(
                "Date Of Birth",
                style: Theme.of(context).textTheme.labelSmall,
              ),
              const SizedBox(height: 3),
              TextField(
                controller: _dobController,
                readOnly: true, // Prevent manual input
                decoration: InputDecoration(
                  hintText: "01/01/2000",
                  border: OutlineInputBorder(),
                  suffixIcon: Icon(Icons.calendar_month),
                ),
                onTap: () => _selectDate(context), // Show date picker on tap
              ),
              const SizedBox(height: 20),
              Text(
                "Phone Number",
                style: Theme.of(context).textTheme.labelSmall,
              ),
              const SizedBox(height: 3),
              Row(
                children: [
                  Container(
                    width: 120,
                    decoration: BoxDecoration(
                      border: Border.symmetric( vertical: BorderSide.none),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: DropdownButton<String>(
                      value: _selectedCountryCode,
                      isExpanded: true,
                      underline: SizedBox(), // Remove default underline
                      items:
                      _countryCodes.map((country) {
                        return DropdownMenuItem<String>(
                          value: country['code'],
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 8),
                            child: Row(
                              children: [
                                Text(country['flag']!),
                                SizedBox(width: 8),
                                Text(country['code']!),
                              ],
                            ),
                          ),
                        );
                      }).toList(),
                      onChanged: (value) {
                        setState(() {
                          _selectedCountryCode = value!;
                        });
                      },
                    ),
                  ),
                  Expanded(
                    child: TextField(
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                        hintText: "Phone Number",

                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Text(
                "Password",
                style: Theme.of(context).textTheme.labelSmall,
              ),
              const SizedBox(height: 3),
              TextField(
                decoration: InputDecoration(
                  hintText: "Email Address",
                  border: OutlineInputBorder(),
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          AAppButton(buttonText: "Sign Up"),
          const SizedBox(height: 50),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                "Already have an account?",
                style: Theme.of(context).textTheme.labelSmall,
              ),
              const SizedBox(width: 5),
              TextButton(
                style: TextButton.styleFrom(
                  padding: const EdgeInsets.all(0),
                  minimumSize: const Size(0, 0),
                  tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                ),
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>  LoginOne(),
                    ),
                  );
                },
                child: Text(
                  "Sign In",
                  style: Theme.of(context).textTheme.labelMedium?.copyWith(
                    color: Colors.blue[800],
                    fontSize: 15,
                  ),
                ),
              ),
            ],
          ),
        ]

      ),
    );
  }
}
