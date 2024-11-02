import 'package:flutter/material.dart';
import 'exchange_screen.dart';

class ProductDetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.bookmark_border), // Save icon
            onPressed: () {
              // Handle save action
            },
          ),
          IconButton(
            icon: Icon(Icons.upload), // Upload icon
            onPressed: () {
              // Handle upload action
            },
          ),
        ],
      ),
      body: Column(
        children: [
          // Product Image taking half the screen
          Expanded(
            flex: 1,
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(12.0),
                    bottomRight: Radius.circular(12.0),
                  ),
                  child: Image.asset(
                    'lib/assets/kismas2.jpg', // Ensure the asset path is correct
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                // "1/4" Indicator in the bottom left corner of the image
                Positioned(
                  bottom: 16.0,
                  left: 16.0,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
                    decoration: BoxDecoration(
                      color: Colors.black54,
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Text(
                      "1/4",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12.0,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          // Product Info and Actions in the lower half
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Design House and Rating
                  Row(
                    children: [
                      Icon(Icons.home, size: 24), // Icon for Design House
                      SizedBox(width: 8.0),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Design House",
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 4.0),
                          Row(
                            children: [
                              Icon(Icons.star, color: Colors.yellow, size: 20),
                              SizedBox(width: 4),
                              Text("4.9 (127)"),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 8.0),
                  
                  // Product Name and "Posted" Time
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Kismas",
                        style: TextStyle(
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "Posted 1 hr ago",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 14.0,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 16.0),

                  // Action Tags
                  Row(
                    children: [
                      _buildActionTag(context, "Barter online", Colors.blue),
                      SizedBox(width: 8.0),
                      _buildActionTag(context, "Best product", Colors.blue),
                    ],
                  ),
                  SizedBox(height: 16.0),

                  // Description
                  Text(
                    "Goldy lamp is an ideal solution for creating a cozy atmosphere in your home. This stylish and functional lighting element provides comfortable.",
                    style: TextStyle(
                      fontSize: 16.0,
                      height: 1.5,
                    ),
                  ),
                  Spacer(),

                  // Exchange Button
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(vertical: 16.0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        backgroundColor: Colors.pinkAccent, // Set color to pinkAccent
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => ExchangeScreen()),
                        );
                      },
                      child: Text(
                        "Exchange",
                        style: TextStyle(fontSize: 18.0, color: Colors.white), // Text color set to white for contrast
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  // Widget for action tags with customizable color
  Widget _buildActionTag(BuildContext context, String label, Color color) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 6.0),
      decoration: BoxDecoration(
        color: color.withOpacity(0.2),
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Row(
        children: [
          Icon(Icons.check_circle, color: color, size: 16), // Icon for tag
          SizedBox(width: 4.0),
          Text(
            label,
            style: TextStyle(
              color: color,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
