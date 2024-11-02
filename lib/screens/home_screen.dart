import 'package:flutter/material.dart';
import 'product_detail_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: TextField(
          decoration: InputDecoration(
            hintText: "Search products",
            prefixIcon: Icon(Icons.search, color: Colors.grey),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
            filled: true,
            fillColor: Colors.grey[200],
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.settings, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Explore Electronics Section with adjusted layout
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.blue[100],
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Explore Electronics",
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Exchange for what you want",
                          style: TextStyle(fontSize: 14, color: Colors.grey[700]),
                        ),
                        SizedBox(height: 10),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: TextButton(
                            onPressed: () {},
                            child: Text("Barter now", style: TextStyle(color: Colors.blue)),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 10),
                  // Product Image positioned to the right
                  Container(
                    width: 80,
                    height: 80,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: AssetImage('lib/assets/pc.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),

            // Categories Section with "See All"
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Categories", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                GestureDetector(
                  onTap: () {},
                  child: Text("See all", style: TextStyle(color: Colors.pink, fontSize: 14)),
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _buildCategoryIcon(Icons.lightbulb, "Lamp"),
                _buildCategoryIcon(Icons.directions_bike, "Bicycle"),
                _buildCategoryIcon(Icons.computer, "Computer"),
                _buildCategoryIcon(Icons.camera, "Cameras"),
                _buildCategoryIcon(Icons.airplanemode_active, "Trip"),
              ],
            ),
            SizedBox(height: 20),

            // Exclusive Section with Countdown Timer and "Add to Favorites" Icon
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Exclusive", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  decoration: BoxDecoration(
                    color: Colors.green[300],
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text("03:25:43", style: TextStyle(color: Colors.white)),
                ),
              ],
            ),
            SizedBox(height: 10),
            GridView.count(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              children: [
                _buildExclusiveItem(context, "WhiteLam", "ArtMood", 'lib/assets/white lam.jpeg'),
                _buildExclusiveItem(context, "Floor lamp", "Design House", 'lib/assets/lamp.jpeg'),
                _buildExclusiveItem(context, "Kismas", "ArtMood", 'lib/assets/kismas.jpg'),
                _buildExclusiveItem(context, "Blacky", "ArtMood", 'lib/assets/lamp restaurant.jpeg'),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCategoryIcon(IconData icon, String label) {
    return Column(
      children: [
        CircleAvatar(
          backgroundColor: Colors.grey[200],
          child: Icon(icon, color: Colors.black),
        ),
        SizedBox(height: 5),
        Text(label, style: TextStyle(fontSize: 12)),
      ],
    );
  }

  Widget _buildExclusiveItem(BuildContext context, String title, String brand, String imagePath) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ProductDetailScreen()),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          image: DecorationImage(
            image: AssetImage(imagePath),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: [
            // Add to Favorites Icon at the Top Right
            Positioned(
              top: 8,
              right: 8,
              child: Icon(Icons.favorite_border, color: Colors.white, size: 24),
            ),
            // Product Name and Brand Text at the Bottom
            Positioned(
              bottom: 8,
              left: 8,
              right: 8,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      shadows: [
                        Shadow(
                          blurRadius: 8,
                          color: Colors.black.withOpacity(0.7),
                          offset: Offset(1, 1),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    brand,
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 12,
                      shadows: [
                        Shadow(
                          blurRadius: 8,
                          color: Colors.black.withOpacity(0.7),
                          offset: Offset(1, 1),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
