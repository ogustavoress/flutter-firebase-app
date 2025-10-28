class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key});
  final _formKey = GlobalKey<FormState>();

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            backgroundColor: Colors.blue.shade50,
            body: Center(
                child: SingleChildScrollView(
                    padding: const EdgeInsets.all(24),
                    child: Card(
                        elevation: 6,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                        ),
                        child: Padding(
                            padding: const EdgeInsets.all(24),
                            child: Form(
                                key: _formKey,
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment: CrossAxisAlignment.stretch,
                                    children: [

                                    ],
                                ),
                            ),
                        ),
                    ),
                ),
            ),
        );
    }
}