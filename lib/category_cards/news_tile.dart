import 'package:flutter/material.dart';

class NewsTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Container(
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(6),
              child: Image.asset(
                'assets/sports.jpg',
                width: double.infinity,
                height: 200,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Text(
              " hwou fhohid fodfheo fhjiof  feiwf dslijf c ",
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
              style: TextStyle(
                  color: Colors.black87,
                  fontSize: 20,
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              "hwou fhohid fodfheo fhjiof  feiwhfjf dslijf chwou fhohid hwou fhohid fodfheo fhjiof  feiwhfjf dslijf chwou fhohid  fodfheo fhjiof  feiwhfjf dslijf c ",
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 12,
                  fontWeight: FontWeight.w500),
            )
          ],
        ),
      ),
    );
  }
}
