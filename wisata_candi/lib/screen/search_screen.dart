import 'package:flutter/material.dart';
import 'package:wisata_candi/data/candi_data.dart';
import 'package:wisata_candi/models/candi.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreen();
}

class _SearchScreen extends State<SearchScreen> {
  //TODO 1: Deklarasi variabel(state) yang dibutuhkan
  List<Candi> _filterCandis = candiList;
  String _searchQuery = '';
  final TextEditingController _searchController = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //TODO 2: Buat AppBar dengan judul Pencarian Candi
      appBar: AppBar(
        title: const Text('Pencarian Candi'),
      ),
      //TODO 3: Buat Body berupa Column
      body: Column(
        children: [
      //TODO 4: Buat TextField pencarian sebagai anak dari Column
      Padding(
        padding: const EdgeInsets.all(16),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: Colors.deepPurple,
          ),
          child: TextField( 
            autofocus: false,
            decoration: InputDecoration(
              hintText: 'Cari Candi',
              prefixIcon: Icon(Icons.search),
              border: InputBorder.none,
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.deepPurple)
              ),
              contentPadding: EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 12,
              )
            ),
          ),
        ),
      ),
      //TODO 5: Buat ListView hasil pencarian sebagai anak dari Column
      Expanded(
        child: ListView.builder(
          itemCount: _filterCandis.length,
          itemBuilder: (context, index) {
            final candi = _filterCandis[index];
            //TODO 8: Implementasi GestureDetector dan Hero animation 
            return Card(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.all(8),
                    width: 100,
                    height: 100,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        candi.imageAsset,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          candi.name,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          candi.location
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              margin: EdgeInsets.symmetric(
                horizontal: 16, 
                vertical: 4,
              ),
            );
          },
        ),
      ),
        ],
      ),
    );
  }
}