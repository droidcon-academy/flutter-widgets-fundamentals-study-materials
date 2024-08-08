StreamBuilder(
    stream: myStreamController.stream,
    builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
            return Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('ConnectionState -> waiting',
                        style:
                            TextStyle(color: Colors.red, fontSize: 20)),
                ),
                const CircularProgressIndicator(),
                Visibility(
                    visible: snapshot.hasData,
                    child: Text(
                    snapshot.data.toString(),
                    style: const TextStyle(
                        color: Colors.black, fontSize: 24),
                    ),
                ),
                ],
            );
        } else if (snapshot.connectionState ==
                ConnectionState.active ||
            snapshot.connectionState == ConnectionState.done) {
        if (snapshot.hasError) {
            return const Text('Error');
        } else if (snapshot.hasData) {
            return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
                children: [
                const Text(
                    'ConnectionState -> hasData',
                    style: TextStyle(color: Colors.red, fontSize: 20),
                    textAlign: TextAlign.center,
                ),
                Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(
                    backgroundColor: Colors.grey,
                    child: Text(
                        snapshot.data.toString(),
                        style: const TextStyle(
                            fontSize: 30, color: Colors.white),
                        textAlign: TextAlign.center,
                    ),
                    ),
                ),
                ],
            ),
            );
        } else {
            return const Text('0',
                style: TextStyle(color: Colors.red, fontSize: 40));
        }
        } else {
        return Text('State: ${snapshot.connectionState}');
        }
    },
    ),