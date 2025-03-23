import 'package:flutter/material.dart';

class MainMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            "Ganesha Bank",
            style: TextStyle(color: Colors.white), // Set text color to white
          ),
        ),
        backgroundColor: Colors.blue[900],
        actions: [IconButton(icon: Icon(Icons.logout), onPressed: () {})],
      ),
      body: Container(
        color: Colors.white, // Set background color to white
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(16),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                  side: BorderSide(color: Colors.black),
                ),
                elevation: 5,
                color: Colors.white,
                child: Padding(
                  padding: EdgeInsets.all(16),
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.asset(
                          'assets/rems.jpg',
                          width: 70,
                          height: 70,
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: double.infinity,
                              padding: EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                color: Colors.grey[200],
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(color: Colors.black),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Nasabah", style: TextStyle(fontWeight: FontWeight.bold)),
                                  Text("Rema"),
                                ],
                              ),
                            ),
                            SizedBox(height: 8),
                            Container(
                              width: double.infinity,
                              padding: EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                color: Colors.blue[100],
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Total Saldo Anda", style: TextStyle(fontWeight: FontWeight.bold)),
                                  Text("Rp. 1200.0000", style: TextStyle(fontSize: 16, color: Colors.blue)),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                elevation: 5,
                child: Padding(
                  padding: EdgeInsets.all(16),
                  child: GridView.count(
                    shrinkWrap: true,
                    crossAxisCount: 3,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    children: [
                      _buildGridItem(Icons.account_balance_wallet, "Cek Saldo"),
                      _buildGridItem(Icons.send, "Transfer"),
                      _buildGridItem(Icons.savings, "Deposito"),
                      _buildGridItem(Icons.payment, "Pembayaran", fontSize: 12),
                      _buildGridItem(Icons.money, "Pinjaman"),
                      _buildGridItem(Icons.history, "Mutasi"),
                    ],
                  ),
                ),
              ),
            ),
            Spacer(),
            Text("Butuh Bantuan?", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            Text("0878-1234-1024", style: TextStyle(fontSize: 20, color: Colors.blue)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildBottomIcon(Icons.settings, "Setting"),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.blue[900],
                    shape: BoxShape.circle,
                  ),
                  padding: EdgeInsets.all(12),
                  child: Icon(Icons.qr_code, size: 40, color: Colors.white),
                ),
                _buildBottomIcon(Icons.person, "Profile"),
              ],
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget _buildGridItem(IconData icon, String label, {double fontSize = 14}) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      elevation: 3,
      child: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 40, color: Colors.blue),
            SizedBox(height: 8),
            Text(label, textAlign: TextAlign.center, style: TextStyle(fontSize: fontSize)),
          ],
        ),
      ),
    );
  }

  Widget _buildBottomIcon(IconData icon, String label) {
    return Column(
      children: [
        Icon(icon, size: 30, color: Colors.blue),
        SizedBox(height: 4),
        Text(label),
      ],
    );
  }
}
