// ignore_for_file: depend_on_referenced_packages

import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import '../bloc/contact_bloc.dart';
import '../models/contact_model.dart';
import 'contact_form_screen.dart';
import 'empty_contact_screen.dart';

class ContactScreen extends StatefulWidget {
  const ContactScreen({super.key});

  @override
  State<ContactScreen> createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
  final _random = Random();

  @override
  Widget build(BuildContext context) {
    context.read<ContactBloc>().add(InitializeContactEvent());
    return BlocBuilder<ContactBloc, ContactState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Contact'),
            centerTitle: true,
          ),
          body:
              // state.props.isNotEmpty ?
              Padding(
            padding: const EdgeInsets.all(16),
            child: BlocBuilder<ContactBloc, ContactState>(
              builder: (context, state) {
                if (state is ContactInitial) {
                  return const CircularProgressIndicator();
                }
                if (state is ContactLoaded) {
                  return ListView.builder(
                    itemCount: state.items.length,
                    itemBuilder: (context, index) {
                      ContactModel item = state.items[index];
                      return Card(
                        color: Colors.grey[200],
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        child: ListTile(
                          title: Text(
                            item.contactName,
                            style: GoogleFonts.poppins(),
                          ),
                          subtitle: Text(
                            item.contactNumber,
                            style: GoogleFonts.poppins(),
                          ),
                          leading: CircleAvatar(
                            radius: 25,
                            backgroundColor: Colors.primaries[
                                    _random.nextInt(Colors.primaries.length)]
                                [_random.nextInt(9) * 100],
                            child: Padding(
                              padding: const EdgeInsets.all(0),
                              child: Text(
                                item.contactName.split('').first,
                                style: const TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                          trailing: IconButton(
                            onPressed: () {
                              showDialog(
                                context: context,
                                builder: (context) => AlertDialog(
                                  content: Text(
                                    'Delete Contact?',
                                    style: GoogleFonts.poppins(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  actions: [
                                    TextButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      child: Text(
                                        'NO',
                                        style: GoogleFonts.poppins(
                                          fontSize: 17,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                    TextButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(
                                          SnackBar(
                                              content: Text(
                                                  '${item.contactName} Deleted')),
                                        );
                                        // setState(() {
                                        //   manager.removeAt(index);
                                        // });
                                      },
                                      child: Text(
                                        'YES',
                                        style: GoogleFonts.poppins(
                                          fontSize: 17,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            },
                            icon: const Icon(Icons.delete_forever_rounded),
                          ),
                        ),
                      );
                    },
                  );
                }
                return Container();
              },
            ),
          ),
          // : const EmptyContactScreen(),
          floatingActionButton: BlocBuilder<ContactBloc, ContactState>(
            builder: (context, state) {
              return FloatingActionButton(
                child: const Icon(Icons.person_add),
                onPressed: () async {
                  ContactModel data = await Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ContactFormScreen()));
                  setState(() {
                    state.props.add(ContactModel(
                        contactName: data.contactName,
                        contactNumber: data.contactNumber));
                  });
                },
              );
            },
          ),
        );
      },
    );
  }
}
