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
                                    const Icon(Icons.lock, size: 64, color: Colors.blue),
                                    const SizedBox(height: 16),
                                    Text(
                                        text:'Bem-vindo!',
                                        textAlign: TextAlign.center,
                                        style: Theme.of(context).textTheme.headlineMedium?.copyWith(color: Colors.blue.shade800),
                                    ),
                                    const SizedBox(height: 8),
                                    Text(
                                        text:'Faça login para continuar.',
                                        textAlign: TextAlign.center,
                                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.blue.grey[700]),
                                    ),
                                ),
                            ),
                        ),
                    ),
                ),
            ),
        );
    }
}