import 'package:flutter/material.dart';
import 'package:gabriel_abiacl/widgets/card_icone.dart';
import 'package:gabriel_abiacl/pages/tela_perfil.dart';
import 'package:gabriel_abiacl/pages/tela_configuracoes.dart';
import 'package:gabriel_abiacl/pages/tela_favoritos.dart';
import 'package:gabriel_abiacl/pages/tela_mensagens.dart';

class TelaHome extends StatelessWidget {
  const TelaHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Meu App de Ícones'),
        backgroundColor: Theme.of(context).colorScheme.primaryContainer,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 16),
            CardIcone(
              icone: Icons.person,
              titulo: 'Perfil',
              descricao: 'Veja e edite suas informações pessoais.',
              textoBotao: 'Abrir Perfil',
              cor: Colors.blue,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const TelaPerfil()),
                );
              },
            ),
            CardIcone(
              icone: Icons.settings,
              titulo: 'Configurações',
              descricao: 'Ajuste preferências e opções do aplicativo.',
              textoBotao: 'Abrir Configurações',
              cor: Colors.grey,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const TelaConfiguracoes()),
                );
              },
            ),
            CardIcone(
              icone: Icons.favorite,
              titulo: 'Favoritos',
              descricao: 'Acesse os itens que você marcou como favoritos.',
              textoBotao: 'Ver Favoritos',
              cor: Colors.red,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const TelaFavoritos()),
                );
              },
            ),
            CardIcone(
              icone: Icons.message,
              titulo: 'Mensagens',
              descricao: 'Leia e envie mensagens para seus contatos.',
              textoBotao: 'Ver Mensagens',
              cor: Colors.green,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const TelaMensagens()),
                );
              },
            ),
            CardIcone(
              icone: Icons.help_outline,
              titulo: 'Ajuda',
              descricao: 'Encontre respostas e suporte quando precisar.',
              textoBotao: 'Obter Ajuda',
              cor: Colors.orange,
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  builder: (context) {
                    return Container(
                      padding: const EdgeInsets.all(20),
                      height: 200,
                      child: Column(
                        children: [
                          const Text(
                            'Ajuda',
                            style: TextStyle(fontSize: 22),
                          ),
                          const SizedBox(height: 8),
                          const Text('Entre em contato pelo e-mail suporte@app.com.'),
                          const SizedBox(height: 16),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: const Text('Fechar'),
                          ),
                        ],
                      ),
                    );
                  },
                );
              },
            ),
            const SizedBox(height: 24),
            Text(
              'Desenvolvido por Gabriel Abiacl',
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey.shade600,
                fontStyle: FontStyle.italic,
              ),
            ),
            const SizedBox(height: 24),
          ],
        ),
      ),
    );
  }
}
