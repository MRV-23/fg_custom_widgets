import 'package:flutter/material.dart';


class FGMensaje extends StatefulWidget {
  final String title;
  final String subTitle;
  final String description;
  final IconData icon;

  FGMensaje({
    required this.title,
    required this.subTitle,
    required this.description,
    required this.icon,
  });

  @override
  _FGMensajeState createState() => _FGMensajeState();
}

class _FGMensajeState extends State<FGMensaje> {
  bool _isExpanded = true;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ExpansionPanelList(
        expansionCallback: (int index, bool isExpanded) {
          setState(() {
            _isExpanded = !isExpanded;
          });
        },
        children: [
          ExpansionPanel(
            headerBuilder: (context, isExpanded) => ListTile(
              leading: Icon(widget.icon),
              title: Text(widget.title),
              subtitle: Text(widget.subTitle),
            ),
            body: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(widget.description),
            ),
            isExpanded: _isExpanded,
          ),
        ],
      ),
    );
  }
}