import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MainHomePage extends StatelessWidget {
  const MainHomePage({super.key});

  Future<void> _launchExternal(String url) async {
    final Uri uri = Uri.parse(url);
    if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
      throw Exception('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(16),
            child: Text(
              "Go Run Apps.Live",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _SocialLink(
                  label: 'LinkedIn',
                  icon: const FaIcon(
                    FontAwesomeIcons.linkedin,
                    color: Color(0xFF0077B5), // Official LinkedIn Blue
                  ),
                  onTap: () => _launchExternal(
                    'https://www.linkedin.com/in/peterjohnbishop/',
                  ),
                ),
                const SizedBox(width: 30),
                _SocialLink(
                  label: 'GitHub',
                  icon: FaIcon(FontAwesomeIcons.github, color: Colors.black),
                  onTap: () =>
                      _launchExternal('https://github.com/PeterJohnBishop'),
                ),
              ],
            ),
          ),

          const Divider(thickness: 1, indent: 20, endIndent: 20),

          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Apps',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ),
          ),

          Expanded(
            child: ListView(
              children: [
                ListTile(
                  leading: const CircleAvatar(child: Icon(Icons.train)),
                  title: const Text('GoFindTransit'),
                  subtitle: const Text('Locate public transit routes, trains, and buses in the Denver area.'),
                  trailing: const Icon(Icons.arrow_forward_ios, size: 16),
                  onTap: () => context.go('/gofindtransit'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _SocialLink extends StatelessWidget {
  final String label;
  final Widget icon; 
  final VoidCallback onTap;

  const _SocialLink({
    required this.label,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(8), 
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            icon, 
            const SizedBox(width: 4),
            Text(label, style: const TextStyle(fontWeight: FontWeight.w500)),
          ],
        ),
      ),
    );
  }
}
