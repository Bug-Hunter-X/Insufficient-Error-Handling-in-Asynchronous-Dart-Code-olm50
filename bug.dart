```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Correctly handle the JSON response
      final jsonData = jsonDecode(response.body);
      // Process jsonData here...
    } else {
      // Handle non-200 status codes appropriately
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    // Handle exceptions, don't just print them
    print('Error fetching data: $e');
    // Consider rethrowing or returning an error value
    rethrow; 
  }
}
```