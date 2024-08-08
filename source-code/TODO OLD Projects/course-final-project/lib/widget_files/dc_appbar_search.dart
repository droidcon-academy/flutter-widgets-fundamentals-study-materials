import 'package:flutter/material.dart';

class DCSearchBar extends StatelessWidget {
  const DCSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Search Bar example'),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              showSearch(context: context, delegate: DCSearchDelegate());
            },
          )
        ],
      ),
      body: const Center(child: Text('Tap the search icon on the app bar')),
    );
  }
}

class DCSearchDelegate extends SearchDelegate {
  List<String> searchTerms = [
    "China",
    "India",
    "USA",
    "Indonesia",
    "Pakistan",
    "Brazil",
    "Nigeria",
    "Bangladesh",
    "Russia",
    "Mexico",
    "Japan",
    "Ethiopia",
    "Philippines",
    "Egypt",
    "Vietnam",
    "Congo",
    "Iran",
    "Turkey",
    "Germany",
    "Thailand"
  ];

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () {
          // if search query is empty, close it, else remove the input of the search bar
          query.isEmpty ? close(context, null) : query = "";
        },
        icon: const Icon(Icons.clear),
      ),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
        onPressed: () {
          close(context, null); // close the search bar
        },
        icon: const Icon(Icons.arrow_back));
  }

  @override
  Widget buildResults(BuildContext context) {
    return Center(
      child: Text(
        query,
        style: const TextStyle(fontSize: 50, fontWeight: FontWeight.w100),
      ),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // Building the list of matching suggestions
    List<String> matchQuery = searchTerms.where((country) {
      final result = country.toLowerCase();
      final searchInput = query.toLowerCase();
      return result.contains(searchInput);
    }).toList();

    // Creating the suggestion list on form of list tile
    return ListView.builder(
        itemCount: matchQuery.length,
        itemBuilder: (context, index) {
          var suggestionResult = matchQuery[index];
          return ListTile(
            title: Text(suggestionResult),
            onTap: () {
              query = suggestionResult;
              showResults(context);
            }, // on tapping a suggestion, the query is set to the tapped item
          );
        });
  }
}
