// Code for skip button

ElevatedButton(
    onPressed: () {
        final TabController controller =
            DefaultTabController.of(context);
        if (!controller.indexIsChanging) {
        controller
            .animateTo(5 - 1); // take to the end of selector
        }
    },
    child: const Text('SKIP'),
)