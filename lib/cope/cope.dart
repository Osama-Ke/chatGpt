/*
AnimatedCrossFade(
firstChild: Padding(
padding: const EdgeInsets.only(top: 650),
child: Container(
width: double.infinity,
height: 130,
decoration: BoxDecoration(
color: ColorsManager.botomsignin,
borderRadius: BorderRadius.only(
topRight: Radius.circular(100))),
child: TextButton(
onPressed: () {
setState(() {
showfirst = false;
});
},
child: Text(
"Sign in ",
style: TextStyle(
fontSize: 22,
fontWeight: FontWeight.bold,
color: ColorsManager.signin),
),
),
),
),
secondChild: Padding(
padding: const EdgeInsets.only(top: 279),
child: Container(
decoration: BoxDecoration(
color: ColorsManager.botomsignin,
borderRadius: const BorderRadius.only(
topRight: Radius.circular(100))),
height: 575,
child: Column(
children: [
Padding(
padding: EdgeInsets.only(top: 30),
child: Row(
mainAxisAlignment:
MainAxisAlignment.spaceEvenly,
children: [
Stack(children: [
TextButton(
onPressed: () {
_pageController?.animateToPage(0,
duration:
Duration(milliseconds: 400),
curve: Curves.linear);

updatePage(true);
},
child: Text("sign in ",
style: TextStyle(
color: istrue
? ColorsManager.signin
    : ColorsManager.signin
    .withOpacity(0.5),
fontSize: 22,
fontWeight: FontWeight.bold)),
),
AnimatedContainer(
duration: Duration(milliseconds: 400),
width: 40,
height: 3,
color: ColorsManager.signin,
margin: EdgeInsets.only(
top: istrue ? 40 : 40,
left: istrue ? 20 : 200),
)
]),
TextButton(
onPressed: () {
_pageController?.animateToPage(1,
duration: Duration(milliseconds: 400),
curve: Curves.linear);

updatePage(false);

setState(() {
istrue = false;
});
},
child: Text("sign up ",
style: TextStyle(
color: istrue
? ColorsManager.signin
    .withOpacity(0.5)
    : ColorsManager.signin,
fontSize: 20,
fontWeight: FontWeight.bold)),
)
],
),
),
SizedBox(
width: double.infinity,
height: 490,
child: PageView(
controller: _pageController,
children: [
Column(
children: [
Column(
children: [
Padding(
padding: const EdgeInsets.only(
top: 70, left: 25, right: 25),
child: TextFormField(
decoration: InputDecoration(
prefixIcon: const Icon(Icons
    .alternate_email_outlined),
hintText: "Email address",
border: const OutlineInputBorder(
borderRadius:
BorderRadius.all(
Radius.circular(
10))),
filled: true,
fillColor: ColorsManager
    .ContenirWelcome)),
),
Padding(
padding: const EdgeInsets.only(
top: 30, left: 25, right: 25),
child: TextFormField(
decoration: InputDecoration(
prefixIcon: const Icon(Icons
    .lock_outline_rounded),
hintText: "password",
border: const OutlineInputBorder(
borderRadius:
BorderRadius.all(
Radius.circular(
10))),
filled: true,
fillColor: ColorsManager
    .ContenirWelcome)),
),
],
),
InkWell(
onTap: () {},
child: Padding(
padding:
const EdgeInsets.only(top: 30),
child: Container(
decoration: BoxDecoration(
color: ColorsManager
    .ContenirWelcome,
borderRadius:
const BorderRadius.all(
Radius.circular(100))),
height: 50,
width: 175,
child: const Center(
child: Text(
"sign in ",
style: TextStyle(
fontSize: 20,
fontWeight: FontWeight.bold),
)),
),
),
),
Padding(
padding: const EdgeInsets.only(top: 11),
child: TextButton(
onPressed: () {},
child: Text(
"Forgot Password?",
style: TextStyle(
color: ColorsManager.welcome,
fontSize: 16,
fontWeight: FontWeight.bold),
)),
)
],
),
Column(
children: [
Column(
children: [
Padding(
padding: const EdgeInsets.only(
top: 70, left: 25, right: 25),
child: TextFormField(
decoration: InputDecoration(
prefixIcon: const Icon(Icons
    .alternate_email_outlined),
hintText: "Email address",
border: const OutlineInputBorder(
borderRadius:
BorderRadius.all(
Radius.circular(
10))),
filled: true,
fillColor: ColorsManager
    .ContenirWelcome)),
),
Padding(
padding: const EdgeInsets.only(
top: 30, left: 25, right: 25),
child: TextFormField(
decoration: InputDecoration(
prefixIcon: const Icon(Icons
    .lock_outline_rounded),
hintText: "password",
border: const OutlineInputBorder(
borderRadius:
BorderRadius.all(
Radius.circular(
10))),
filled: true,
fillColor: ColorsManager
    .ContenirWelcome)),
),
Padding(
padding: const EdgeInsets.only(
top: 30, left: 25, right: 25),
child: TextFormField(
decoration: InputDecoration(
prefixIcon: const Icon(Icons
    .lock_outline_rounded),
hintText:
"Confirm Password",
border: const OutlineInputBorder(
borderRadius:
BorderRadius.all(
Radius.circular(
10))),
filled: true,
fillColor: ColorsManager
    .ContenirWelcome)),
),
],
),
InkWell(
onTap: () {},
child: Padding(
padding:
const EdgeInsets.only(top: 30),
child: Container(
decoration: BoxDecoration(
color: ColorsManager
    .ContenirWelcome,
borderRadius:
const BorderRadius.all(
Radius.circular(100))),
height: 50,
width: 175,
child: const Center(
child: Text(
"sign up ",
style: TextStyle(
fontSize: 20,
fontWeight: FontWeight.bold),
)),
),
),
),
Padding(
padding: const EdgeInsets.only(top: 11),
child: TextButton(
onPressed: () {},
child: Text(
"Forgot Password?",
style: TextStyle(
color: ColorsManager.welcome,
fontSize: 16,
fontWeight: FontWeight.bold),
)),
)
],
)
],
),
),
],
),
),
),
crossFadeState: showfirst
? CrossFadeState.showFirst
    : CrossFadeState.showSecond,
duration: Duration(milliseconds: 400))
*/





















