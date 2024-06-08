// ignore_for_file: file_names

import 'package:aproject/utils/constraints/colors.dart';
import 'package:flutter/material.dart';

class UserData extends StatelessWidget {
  const UserData({
    super.key,
    required this.icon,
    required this.label,
    required this.info,
    required this.newInfoDemand,
  });

  final IconData icon;
  final String label;
  final String info;
  final String newInfoDemand;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Expanded(
          //using expanded widgets because they act like flex, causing info to wrap to next line if it becomes long.
          flex: 1,
          child: Icon(
            icon,
            color: AColors.grey,
          ),
        ),
        // SizedBox(width: 20.0),

        Expanded(
          flex: 7,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                label,
                style: Theme.of(context).textTheme.labelMedium,
              ),
              Text(
                info,
                style: Theme.of(context).textTheme.headlineSmall,
              )
            ],
          ),
        ),

        //flex value shares space between them
        Expanded(
          flex: 1,
          child: IconButton(
            onPressed: () {
              showModalBottomSheet<void>(
                //modal popup to enable edits
                context: context,
                builder: (BuildContext context) {
                  return SizedBox(
                    height: 300,
                    child: Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  newInfoDemand,
                                  style: const TextStyle(fontSize: 18.0),
                                ),
                                const TextField(
                                  // controller: usernameController,
                                  decoration: InputDecoration(
                                    border: UnderlineInputBorder(),
                                  ),
                                )
                              ],
                            ),
                            const SizedBox(height: 50),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      // primary: const Color(0xffb80f0a),
                                      foregroundColor: AColors.white),
                                  onPressed: () => Navigator.pop(context),
                                  child: const Text('Cancel'),
                                ),
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      // primary: const Color(0xffb80f0a),
                                      foregroundColor: AColors.white),
                                  onPressed: () => Navigator.pop(context),
                                  child: const Text('Save'),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              );
            },
            icon: const Icon(Icons.edit),
            iconSize: 30.0,
            color: AColors.primary,
          ),
        ),
      ],
    );
  }
}
