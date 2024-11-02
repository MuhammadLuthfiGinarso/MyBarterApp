import 'package:flutter/material.dart';

class ExchangeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Exchange"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Exchange Images Row
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Image.asset(
                        'lib/assets/Kismas Glass Block Lamp.jpeg',
                        fit: BoxFit.cover, // Mengisi area dengan proporsi yang benar
                        width: double.infinity, // Lebar penuh
                        height: 200, // Atur tinggi sesuai kebutuhan
                      ),
                      SizedBox(height: 8),
                      Text("Product: Keyboard"),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
                        color: Colors.blue, // Kotak biru
                        child: Text(
                          "Seller: You",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 10),
                Icon(Icons.swap_horiz, color: Colors.purple, size: 30), // Exchange icon
                SizedBox(width: 10),
                Expanded(
                  child: Column(
                    children: [
                      Image.asset(
                        'lib/assets/Kismas Glass Block Lamp.jpeg',
                        fit: BoxFit.cover, // Mengisi area dengan proporsi yang benar
                        width: double.infinity, // Lebar penuh
                        height: 200, // Atur tinggi sesuai kebutuhan
                      ),
                      SizedBox(height: 8),
                      Text("Product: Kismas"),
                      Text("Buyer: Design House", style: TextStyle(color: Colors.grey)),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            // Delivery Location
            Text(
              "Delivery Location",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold), // Besarkan tulisan
            ),
            SizedBox(height: 10),
            // Address section dengan ikon lokasi
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Address", style: TextStyle(fontWeight: FontWeight.bold)), // "Address" di kiri
                SizedBox(height: 4), // Jarak antar tulisan
                Row(
                  children: [
                    Icon(Icons.location_on, size: 24), // Ikon lokasi
                    SizedBox(width: 8), // Jarak antara ikon dan teks
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("34 Cranberry St., New York"),
                        Text("01223, New-York"),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 20), // Jarak ke bawah
            // Delivery method dengan ikon mobil
            Text(
              "Delivery method",
              style: TextStyle(fontWeight: FontWeight.bold), // Tulisan di atas ikon mobil
            ),
            SizedBox(height: 4), // Jarak antar tulisan
            ListTile(
              leading: Icon(Icons.local_shipping),
              title: Text("\$15.00"), // Tulisan sejajar dengan ikon mobil
              subtitle: Text("(3 days)"),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            Divider(),
            // Order Info
            Text(
              "Order Info",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold), // Besarkan tulisan
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Delivery"),
                Text("\$15.00"),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Tax"),
                Text("\$2.00"),
              ],
            ),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Total", style: TextStyle(fontWeight: FontWeight.bold)),
                Text("\$17.00", style: TextStyle(fontWeight: FontWeight.bold)),
              ],
            ),
            Spacer(),
            ElevatedButton(
              onPressed: () {},
              child: Text("Confirm Exchange"),
              style: ElevatedButton.styleFrom(
                minimumSize: Size(double.infinity, 50),
                backgroundColor: Colors.pinkAccent,
              ),
            ),
            SizedBox(height: 10),
            Center(
              child: Text(
                "By sharing information, you agree to our Terms of Use and acknowledge that you have read the Privacy Notice.",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 12, color: Colors.grey),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
