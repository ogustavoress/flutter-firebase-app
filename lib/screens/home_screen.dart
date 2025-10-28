class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  Future<void> _signOut() async {
    await FirebaseAuth.instance.signOut();
  }
  
  @override
  Widget build(BuildContext context) {
     final user = FirebaseAuth.instance.currentUser;
 return Scaffold(
   appBar: AppBar(
     title: const Text("Home"),
     actions: [IconButton(
         icon: const Icon(Icons.logout),
         tooltip: "Sair",
         onPressed: _signOut,
       ),
     ],
   ),
   body: Center(
     child: Text(
       "Bem-vindo, ${user?.email ?? 'Usuário'}",
       style: const TextStyle(fontSize: 18),
     ),
   ),
 );
  }
}