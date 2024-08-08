class DCSecondRoute extends StatelessWidget {
  const DCSecondRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Route Second Page'),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                // Navigate back to first screen when tapped.
                Navigator.pop(context);
              },
              child: const Text('Go back!'),
            ),
            ElevatedButton(
              onPressed: () {
                // Navigate back to first screen when tapped.
                Navigator.pushNamed(context, 'home');
              },
              child: const Text('Go to home!'),
            ),
          ],
        ),
      ),
    );
  }
}
