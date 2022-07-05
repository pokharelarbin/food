// import 'package:flutter_neumorphic/flutter_neumorphic.dart';
// import 'responsivness.dart';
// import 'uiconstant.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:bootstrap_icons/bootstrap_icons.dart';


// class SignupScreen extends StatefulWidget {
//   const SignupScreen({Key? key}) : super(key: key);

//   @override
//   State<SignupScreen> createState() => _SignupScreenState();
// }

// class _SignupScreenState extends State<SignupScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return ResponsiveWidget(
//       largeScreen: _buildScreen(),
//       mediumScreen: _buildScreen(forMediumScreen: true),
//       smallScreen: _buildSmallScreen(),
//     );
//   }

//   Widget _buildSmallScreen() {
//     return SingleChildScrollView(
//       child: Stack(children: [
//         Stack(
//           children: [
//             ClipPath(
//               clipper: MyCustomClipperMobile(),
//               child: Container(
//                 height: SizeConfig.screenHeight * 0.7,
//                 decoration: const BoxDecoration(
//                     // image: DecorationImage(
//                     //   image: AssetImage(
//                     //     'assets/images/cake.jpeg',
//                     //   ),
//                     //   fit: BoxFit.cover,
//                     // ),
//                     ),
//               ),
//             ),
//             ClipPath(
//               clipper: MyCustomClipperMobile(),
//               child: Container(
//                 height: SizeConfig.screenHeight * 0.7,
//                 decoration: BoxDecoration(
//                     color: UIConstant.kWhite,
//                     gradient: LinearGradient(
//                         begin: FractionalOffset.topCenter,
//                         end: FractionalOffset.bottomCenter,
//                         colors: [
//                           UIConstant.kLightYellow.withOpacity(0.3),
//                           UIConstant.kDarkOrange.withOpacity(0.3),
//                         ],
//                         stops: const [
//                           0.0,
//                           1.0
//                         ])),
//               ),
//             ),
//           ],
//         ),
//         Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 30),
//           child:
//               Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
//             _sizedBox(height: 0.23),
//             _textForm(
//                 isPassword: false,
//                 text: 'User Id',
//                 icon: BootstrapIcons.person),
//             _sizedBox(height: 0.03),
//             _textForm(
//                 isPassword: false,
//                 text: 'User Name',
//                 icon: BootstrapIcons.person),
//             _sizedBox(height: 0.03),
//             _textForm(
//                 isPassword: false,
//                 text: 'Email Id',
//                 icon: BootstrapIcons.envelope),
//             _sizedBox(height: 0.03),
//             _textForm(
//                 isPassword: false,
//                 text: 'Mobile Number',
//                 icon: BootstrapIcons.telephone),
//             _sizedBox(height: 0.03),
//             _textForm(
//                 isPassword: true, text: 'Password', icon: BootstrapIcons.lock),
//             _sizedBox(height: 0.03),
//             _textForm(
//                 isPassword: true,
//                 text: 'Confirm Password',
//                 icon: BootstrapIcons.lock),
//             _sizedBox(height: 0.06),
//             _button(
//                 textColor: UIConstant.kWhite,
//                 text: 'Sign Up',
//                 butttonColor: UIConstant.kDarkOrange),
//             _sizedBox(height: 0.03),
//           ]),
//         ),
//       ]),
//     );
//   }

//   Widget _buildScreen({bool forMediumScreen = false}) {
//     return Scaffold(
//       backgroundColor: UIConstant.kWhite,
//       body: SingleChildScrollView(
//         child: Stack(
//           children: [
//             Row(
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 Expanded(
//                   child: Image.asset(
//                     'assets/images/background.png',
//                     fit: BoxFit.fill,
//                     height: SizeConfig.screenHeight,
//                   ),
//                 ),
//                 Material(
//                   elevation: 20,
//                   borderRadius: const BorderRadius.all(Radius.circular(20)),
//                   child: Container(
//                     height: 600,
//                     width: forMediumScreen ? 400 : 450,
//                     decoration: const BoxDecoration(
//                       borderRadius: BorderRadius.all(
//                         Radius.circular(20),
//                       ),
//                     ),
//                   ),
//                 ),
//                 SizedBox(
//                   width: forMediumScreen ? 70 : 170,
//                 )
//               ],
//             ),
//             ClipPath(
//               clipper: MyCustomClipperDesktop(),
//               child: Container(
//                 height: SizeConfig.screenHeight,
//                 decoration: BoxDecoration(
//                     color: UIConstant.kWhite,
//                     gradient: LinearGradient(
//                         begin: FractionalOffset.topCenter,
//                         end: FractionalOffset.bottomCenter,
//                         colors: [
//                           UIConstant.kLightYellow.withOpacity(0.3),
//                           UIConstant.kDarkOrange.withOpacity(0.3),
//                         ],
//                         stops: const [
//                           0.0,
//                           1.0
//                         ])),
//               ),
//             ),
//             Row(
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 const Expanded(
//                   child: SizedBox(),
//                 ),
//                 SingleChildScrollView(
//                   child: SizedBox(
//                     height: 700,
//                     width: forMediumScreen ? 300 : 320,
//                     child: ListView(children: [
//                       _sizedBox(height: 0.18),
//                       const CustomTextField(
//                         icon: BootstrapIcons.person,
//                         fieldName: 'User Id',
//                       ),
//                       _sizedBox(height: 0.025),
//                       const CustomTextField(
//                         icon: BootstrapIcons.person,
//                         fieldName: 'User Name',
//                       ),
//                       _sizedBox(height: 0.025),
//                       const CustomTextField(
//                         icon: BootstrapIcons.envelope,
//                         fieldName: 'Email Id',
//                       ),
//                       _sizedBox(height: 0.025),
//                       const CustomTextField(
//                         icon: BootstrapIcons.telephone,
//                         isPhoneField: true,
//                         fieldName: 'Mobile Number',
//                       ),
//                       _sizedBox(height: 0.025),
//                       const CustomTextField(
//                         icon: BootstrapIcons.lock,
//                         fieldName: 'Password',
//                         isPasswordField: true,
//                       ),
//                       _sizedBox(height: 0.025),
//                       const CustomTextField(
//                         icon: BootstrapIcons.lock,
//                         fieldName: 'Confirm Password',
//                         isPasswordField: true,
//                       ),
//                       _sizedBox(height: 0.05),
//                       const CustomButton(
//                           text: 'Sign Up', color: UIConstant.kDarkOrange),
//                     ]),
//                   ),
//                 ),
//                 SizedBox(
//                   width: forMediumScreen ? 120 : 240,
//                 )
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _sizedBox({double height = 0, double width = 0}) {
//     return SizedBox(
//       height: SizeConfig.screenHeight * height,
//       width: SizeConfig.screenWidth * width,
//     );
//   }

//   Widget _textForm({bool isPassword = false, String? text, IconData? icon}) {
//     return Material(
//       color: UIConstant.kWhite,
//       borderRadius: const BorderRadius.all(
//         Radius.circular(10),
//       ),
//       elevation: 10,
//       child: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 10.0),
//         child: TextField(
//           obscureText: isPassword ? true : false,
//           decoration: InputDecoration(
//             floatingLabelBehavior: FloatingLabelBehavior.never,
//             labelText: text,
//             labelStyle: GoogleFonts.lato(
//               textStyle: const TextStyle(
//                   fontSize: 13,
//                   fontWeight: FontWeight.w400,
//                   color: UIConstant.lightGrey),
//             ),
//             filled: true,
//             fillColor: UIConstant.kWhite,
//             border: OutlineInputBorder(
//               borderSide: BorderSide.none, // No border
//               borderRadius: BorderRadius.circular(10), // Apply corner radius
//             ),
//             prefixIcon: Icon(
//               icon,
//               size: 24,
//               color: UIConstant.lightGrey,
//             ),
//             suffixIcon: isPassword ? const Icon(BootstrapIcons.eye) : null,
//           ),
//         ),
//       ),
//     );
//   }

//   Widget _button({
//     required Color butttonColor,
//     required String text,
//     required Color textColor,
//   }) {
//     return SizedBox(
//       height: 55,
//       child: ElevatedButton(
//         onPressed: () {},
//         style: ElevatedButton.styleFrom(
//           elevation: 6,
//           primary: butttonColor,
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(5),
//           ),
//         ),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceAround,
//           children: [
//             Expanded(
//               child: Text(
//                 text,
//                 textAlign: TextAlign.center,
//                 style: GoogleFonts.lato(
//                   textStyle: TextStyle(
//                       fontSize: 16,
//                       fontWeight: FontWeight.w500,
//                       color: textColor),
//                 ),
//               ),
//             ),
//             const Icon(BootstrapIcons.arrow_right_short),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class MyCustomClipperMobile extends CustomClipper<Path> {
//   @override
//   Path getClip(Size size) {
//     Path path = Path();
//     path.lineTo(0.0, 0.0);
//     path.lineTo(0.0, size.height * .8);
//     path.lineTo(size.width, size.height);
//     path.lineTo(size.width, 0.0);
//     return path;
//   }

//   @override
//   bool shouldReclip(CustomClipper<Path> oldClipper) => false;
// }

// class MyCustomClipperDesktop extends CustomClipper<Path> {
//   @override
//   Path getClip(Size size) {
//     Path path = Path();
//     path.lineTo(0.0, size.height * .6);
//     path.lineTo(0.0, size.height);
//     path.lineTo(size.width * .5, size.height);
//     path.lineTo(size.width, size.height * .3);
//     path.lineTo(size.width, 0.0);
//     path.lineTo(size.width * .5, 0.0);
//     path.lineTo(0.0, size.height * .6);
//     // path.moveTo(x, y);
//     return path;
//   }

//   @override
//   bool shouldReclip(CustomClipper<Path> oldClipper) => false;
// }
