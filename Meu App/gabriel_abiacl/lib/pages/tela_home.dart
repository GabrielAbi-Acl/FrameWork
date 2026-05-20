import 'package:flutter/material.dart';
import 'package:gabriel_abiacl/widgets/card_icone.dart';

class TelaHome extends StatefulWidget {
  const TelaHome({super.key});

  @override
  State<TelaHome> createState() => _TelaHomeState();
}

class _TelaHomeState extends State<TelaHome> {
  String _mensagem = 'Toque em um card ou no botão flutuante.';

  void _atualizarMensagem(String mensagem) {
    setState(() {
      _mensagem = mensagem;
    });
  }

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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.all(14),
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.surfaceContainerHighest,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Text(
                  _mensagem,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 8),
            CardIcone(
              icone: Icons.person,
              titulo: 'Perfil',
              descricao: 'Veja e edite suas informações pessoais.',
              textoBotao: 'Abrir Perfil',
              cor: Colors.blue,
              onPressed: () => _atualizarMensagem('Você clicou em Perfil'),
            ),
            CardIcone(
              icone: Icons.settings,
              titulo: 'Configurações',
              descricao: 'Ajuste preferências e opções do aplicativo.',
              textoBotao: 'Abrir Configurações',
              cor: Colors.grey,
              onPressed: () =>
                  _atualizarMensagem('Você clicou em Configurações'),
            ),
            CardIcone(
              icone: Icons.favorite,
              titulo: 'Favoritos',
              descricao: 'Acesse os itens que você marcou como favoritos.',
              textoBotao: 'Ver Favoritos',
              cor: Colors.red,
              onPressed: () => _atualizarMensagem('Você clicou em Favoritos'),
            ),
            CardIcone(
              icone: Icons.message,
              titulo: 'Mensagens',
              descricao: 'Leia e envie mensagens para seus contatos.',
              textoBotao: 'Ver Mensagens',
              cor: Colors.green,
              onPressed: () => _atualizarMensagem('Você clicou em Mensagens'),
            ),
            CardIcone(
              icone: Icons.help_outline,
              titulo: 'Ajuda',
              descricao: 'Encontre respostas e suporte quando precisar.',
              textoBotao: 'Obter Ajuda',
              cor: Colors.orange,
              onPressed: () => _atualizarMensagem('Você clicou em Ajuda'),
            ),
            CardIcone(
              icone: Icons.notifications,
              titulo: 'Notificações',
              descricao: 'Confira alertas e avisos recentes.',
              textoBotao: 'Ver Notificações',
              cor: Colors.purple,
              onPressed: () =>
                  _atualizarMensagem('Você clicou em Notificações'),
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
      floatingActionButton: FloatingActionButton(
        onPressed: () => _atualizarMensagem(
          'Você clicou no botão flutuante!',
        ),
        tooltip: 'Mensagem rápida',
        child: const Icon(Icons.touch_app),
      ),
    );
  }
}
