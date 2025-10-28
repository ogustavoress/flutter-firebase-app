class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key});
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  bool _isObscure = true;
  bool _isLoading = false;

    Future<void> _signIn() async {
        if (_formKey.currentState!.validate()) {
            setState(() => _isLoading = true;);
        }
        try {
            await _auth.signInWithEmailAndPassword(
                email: _emailController.text.trim(),
                password: _passwordController.text.trim(),
            );
        } catch (e) {
            if (mounted) {
            ScaffoldMessenger.of(context)
                .showSnackBar(SnackBar(content: Text('Erro ao fazer login: $e')),
            );
            } finally {
                setState(() => _isLoading = false;);
            }
        }
    }

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
                                    const SizedBox(height: 24),
                                    TextFormField(
                                        controller: _emailController,
                                        keyboardType: TextInputType.emailAddress,
                                        decoration: const InputDecoration(
                                            labelText: 'Email',
                                            prefixIcon: Icon(Icons.email_outlined),
                                            border: OutlineInputBorder(
                                                borderRadius: BorderRadius.Radius.circular(12),
                                            ),
                                        ),
                                        validator: (value) {
                                            if (value == null || value.isEmpty) {
                                                ? 'Preencha o e-mail';
                                                : null;
                                            },
                                        },

                                        //borda fora de foco
                                        enabledBorder: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(12),
                                            borderSide: const BorderSide(color: Colors.grey, width: 1),
                                        ),

                                        //borda em foco
                                        focusedBorder: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(12),
                                            borderSide: const BorderSide(color: Colors.blue, width: 2),
                                        ),

                                        //borda de erro fora de foco
                                        errorBorder: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(12),
                                            borderSide: const BorderSide(color: Colors.redAccent, width: 2),
                                        ),

                                        //borda de erro em foco
                                        focusedErrorBorder: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(12),
                                            borderSide: const BorderSide(color: Colors.redAccent, width: 2),
                                        ),
                                    ),
                                    const SizedBox(height: 16),
                                    TextFormField(
                                        controller: _passwordController,
                                        obscureText: true,
                                        decoration: const InputDecoration(
                                            labelText: 'Senha',
                                            prefixIcon: Icon(Icons.lock_outline),
                                            suffixIcon: IconButton(
                                                icon: Icon(_isObscure ? Icons.visibility_off : Icons.visibility),
                                                onPressed: () {
                                                    setState(() {
                                                        _isObscure = !_isObscure;
                                                    });
                                                },
                                            ),
                                            border: OutlineInputBorder(
                                                borderRadius: BorderRadius.Radius.circular(12),
                                            ),
                                        ),
                                        validator: (value) {
                                            if (value == null || value.isEmpty) {
                                                ? 'Preencha a senha';
                                                : null;
                                            }
                                        },
                                        border: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(12),
                                        ),
                                    ),
                                    const SizedBox(height: 24),
                                    _isLoading{
                                        ? const CircularProgressIndicator()
                                        : Column(
                                            children: [
                                                SizedBox(
                                                    width: double.infinity,
                                                    child: ElevatedButton(
                                                        style ElevatedButton.styleFrom(
                                                            backgroundColor: Colors.blue,  //cor do botão
                                                            foregroundColor: Colors.white, //cor do texto
                                                            padding: const EdgeInsets.symmetric(vertical: 14),
                                                            shape: RoundedRectangleBorder(
                                                                borderRadius: BorderRadius.circular(12),
                                                            ),
                                                        ),
                                                        onPressed: _signIn{
                                                            child: const Text(
                                                                text: 'Entrar',
                                                                style: TextStyle(fontSize: 16),
                                                            ),
                                                        },
                                                    ),
                                                ),
                                            ],
                                        ),
                                    }
                                ),
                            ),
                        ),
                    ),
                ),
            ),
        ),
    }
}