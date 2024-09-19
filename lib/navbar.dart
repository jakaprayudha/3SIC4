import 'package:flutter/material.dart';

class LayoutNavigationBar extends StatefulWidget {
  @override
  _LayoutNavigationBarState createState() => _LayoutNavigationBarState();
}

class _LayoutNavigationBarState extends State<LayoutNavigationBar> {
  int _currentIndex = 0; // Menyimpan indeks tab yang aktif

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _getSelectedWidget(), // Menampilkan halaman sesuai pilihan
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index; // Mengubah indeks saat user memilih tab
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard),
            label: 'Ini Menu 1',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard),
            label: 'Ini Menu 2',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard),
            label: 'Ini Menu 3',
          ),
        ],
      ),
    );
  }

  // Fungsi untuk mengembalikan widget sesuai dengan tab yang dipilih
  Widget _getSelectedWidget() {
    switch (_currentIndex) {
      case 0:
        return Text('Halaman Menu 1');
      case 1:
        return Text('Halaman Menu 2');
      case 2:
        return Text('Halaman Menu 3');
      default:
        return Text('Halaman Menu 1');
    }
  }
}
