import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:food/bloc/login_bloc.dart';
import 'package:food/bloc/login_states.dart';
import 'package:food/bloc/login_event.dart';
import 'responsivness.dart';
import 'uiconstant.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'assets_constants.dart';

class LogInScreen extends StatelessWidget {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final white = const Color(0xFFFFFFFF);

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      largeScreen: _buildScreen(),
      mediumScreen: _buildScreen(forMediumScreen: true),
      smallScreen: _buildSmallScreen(),
    );
  }

  Widget _buildScreen({bool forMediumScreen = false}) {
    return Scaffold(
      backgroundColor: white,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              height: SizeConfig.screenHeight,
              width: SizeConfig.screenWidth,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/foode.png'),
                  colorFilter: ColorFilter.mode(
                      Color.fromRGBO(253, 222, 213, 0.5), BlendMode.dstATop),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Positioned(
              top: 36,
              left: 39,
              child: CircleAvatar(
                radius: 35,
                backgroundColor: Colors.white.withOpacity(0),
                child: Padding(
                  padding: EdgeInsets.all(1),
                  child: Image.asset(Assets.images.logo_round),
                ),
              ),
            ),
            Positioned(
              top: 250,
              left: 150,
              child: Column(
                children: [
                  Text(
                    'WELCOME TO ZIL',
                    style: style2,
                  ),
                  Text(
                    'Hungry ? Lets order food near you',
                    style: style21,
                  )
                ],
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Expanded(
                  child: SizedBox(),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 80,
                  ),
                  child: Material(
                    elevation: 20,
                    borderRadius: const BorderRadius.all(Radius.circular(20)),
                    child: SizedBox(
                      height: 600,
                      width: forMediumScreen ? 400 : 450,
                    ),
                  ),
                ),
                SizedBox(
                  width: forMediumScreen ? 70 : 170,
                )
              ],
            ),
            BlocConsumer<LoginBLoc, LoginState>(
              listener: (context, state) {},
              builder: (context, state) {
                return Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Expanded(
                      child: SizedBox(),
                    ),
                    SingleChildScrollView(
                      child: SizedBox(
                        height: 700,
                        width: forMediumScreen ? 300 : 320,
                        child: ListView(
                          children: [
                            _sizedBox(height: 0.18),
                            _textForm(
                              isPassword: false,
                              text: 'User Email',
                              icon: BootstrapIcons.person,
                            ),
                            _sizedBox(height: 0.05),
                            _textForm(
                              isPassword: true,
                              text: 'Password',
                              icon: BootstrapIcons.lock,
                            ),
                            BlocBuilder<LoginBLoc, LoginState>(
                              builder: (context, state) {
                                if (state is loginErorState) {
                                  return Column(
                                    children: [
                                      _sizedBox(height: 0.035),
                                      Text(state.errorMessage, style: style121),
                                      _sizedBox(height: 0.025),
                                    ],
                                  );
                                } else {
                                  return _sizedBox(height: 0.06);
                                }
                              },
                            ),
                            _button(
                                buttonColor:
                                    const Color.fromRGBO(254, 4, 60, 1),
                                text: 'Login',
                                textColor: Colors.white),
                            _sizedBox(height: 0.03),
                            TextButton(
                              onPressed: () {},
                              child: Text(
                                'Forgot Your Password',
                                style: GoogleFonts.lato(
                                  textStyle: const TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xFF888888),
                                  ),
                                ),
                              ),
                            ),
                            _sizedBox(height: 0.05),
                            Center(
                              child: Text(
                                '---or connect with   ---',
                                style: GoogleFonts.lato(
                                  textStyle: const TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xFF888888),
                                  ),
                                ),
                              ),
                            ),
                            _sizedBox(height: 0.03),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: _socialButton(
                                    buttonColor: const Color(0xFF0FB2D6),
                                    text: 'Facebook',
                                    textColor: const Color(0xFFFFFFFF),
                                    icon: const Icon(BootstrapIcons.facebook),
                                  ),
                                ),
                                SizedBox(width: forMediumScreen ? 10 : 12),
                                Expanded(
                                  child: _socialButton(
                                    buttonColor: const Color(0xFF2E5693),
                                    text: 'Google',
                                    textColor: const Color(0xFFFFFFFF),
                                    icon: const Icon(BootstrapIcons.google),
                                  ),
                                ),
                              ],
                            ),
                            _sizedBox(height: 0.02),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  'Don\'t you have an account?',
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.lato(
                                    textStyle: const TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xFF888888),
                                    ),
                                  ),
                                ),
                                _sizedBox(width: 0.012),
                                TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    'Sign Up',
                                    style: GoogleFonts.lato(
                                      textStyle: const TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w600,
                                        color: Color.fromRGBO(254, 4, 60, 1),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: forMediumScreen ? 120 : 240,
                    )
                  ],
                );
              },
            )
          ],
        ),
      ),
    );
  }

  Widget _buildSmallScreen() {
    return const SingleChildScrollView();
  }

  Widget _sizedBox({double height = 0, double width = 0}) {
    return SizedBox(
      height: SizeConfig.screenHeight * height,
      width: SizeConfig.screenWidth * width,
    );
  }

  Widget _button({
    required Color buttonColor,
    required String text,
    required Color textColor,
  }) {
    return BlocBuilder<LoginBLoc, LoginState>(
      builder: ((context, state) {
        if (state is loginLoadingState) {
          return Center(
            child: CircularProgressIndicator(
              color: Colors.green,
            ),
          );
        }
        return Neumorphic(
            child: SizedBox(
          height: 55,
          child: ElevatedButton(
            onPressed: () {
              if (state is loginValidState) {
                BlocProvider.of<LoginBLoc>(context).add(
                  loginSubmittedEvent(
                      emailController.text, passwordController.text),
                );
              }
            },
            style: ElevatedButton.styleFrom(
              elevation: 6,
              primary: buttonColor,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Text(
                    text,
                    textAlign: TextAlign.center,
                    style: GoogleFonts.lato(
                      textStyle: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w300,
                        color: textColor,
                      ),
                    ),
                  ),
                ),
                const Icon(BootstrapIcons.arrow_right_short),
              ],
            ),
          ),
        ));
      }),
    );
  }

  Widget _socialButton({
    required Color buttonColor,
    required String text,
    required Color textColor,
    required Widget icon,
  }) {
    return Neumorphic(
      style: NeumorphicStyle(
        boxShape: NeumorphicBoxShape.roundRect(
          BorderRadius.circular(30),
        ),
      ),
      child: SizedBox(
        height: 40,
        child: ElevatedButton.icon(
          icon: icon,
          onPressed: () {},
          label: Text(
            text,
            style: GoogleFonts.lato(
              textStyle: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: textColor,
              ),
            ),
          ),
          style: ElevatedButton.styleFrom(
            elevation: 10,
            primary: buttonColor,
          ),
        ),
      ),
    );
  }

  Widget _textForm({bool? isPassword, String? text, IconData? icon}) {
    return Neumorphic(
      child: Material(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: BlocBuilder<LoginBLoc, LoginState>(
            builder: ((context, state) {
              return TextField(
                obscureText: isPassword! ? true : false,
                controller: isPassword ? passwordController : emailController,
                onChanged: isPassword
                    ? (val) {
                        BlocProvider.of<LoginBLoc>(context).add(
                          loginTextChangedEvent(
                              emailController.text, passwordController.text),
                        );
                      }
                    : (val) {
                        BlocProvider.of<LoginBLoc>(context).add(
                            loginTextChangedEvent(
                                emailController.text, passwordController.text));
                      },
                decoration: InputDecoration(
                  floatingLabelBehavior: FloatingLabelBehavior.never,
                  labelText: text,
                  labelStyle: GoogleFonts.lato(
                    textStyle: const TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF888888),
                    ),
                  ),
                  // filled: true,
                  // fillColor: white,
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  prefixIcon: Icon(
                    icon,
                    size: 24,
                    color: const Color(0xFF888888),
                  ),
                  suffixIcon: isPassword
                      ? const Padding(
                          padding: EdgeInsets.fromLTRB(0, 0, 4, 0),
                          child: Icon(
                            BootstrapIcons.eye,
                            size: 24,
                            color: Color(0xFF888888),
                          ),
                        )
                      : null,
                ),
              );
            }),
          ),
        ),
      ),
    );
  }
}
