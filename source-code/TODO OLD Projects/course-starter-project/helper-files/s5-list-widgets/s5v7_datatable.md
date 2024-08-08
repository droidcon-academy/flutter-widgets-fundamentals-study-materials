# Snippet 1

List<DataColumn> get getColumns {
    return const <DataColumn>[
      DataColumn(label: Text('S No.')),
      DataColumn(label: Text('Name')),
      DataColumn(label: Text('Price (USD)'))
    ];
}

List<DataRow> get getRows {
    return [
      const DataRow(cells: <DataCell>[
        DataCell(Text('1')),
        DataCell(Text('Product 1')),
        DataCell(Text('10')),
      ]),
      const DataRow(cells: <DataCell>[
        DataCell(Text('2')),
        DataCell(Text('Product 2')),
        DataCell(Text('20')),
      ]),
      const DataRow(cells: <DataCell>[
        DataCell(Text('3')),
        DataCell(Text('Product 3')),
        DataCell(Text('30')),
      ]),
      const DataRow(cells: <DataCell>[
        DataCell(Text('4')),
        DataCell(Text('Product 4')),
        DataCell(Text('40')),
      ]),
      const DataRow(cells: <DataCell>[
        DataCell(Text('5')),
        DataCell(Text('Product 5')),
        DataCell(Text('50')),
      ]),
      const DataRow(cells: <DataCell>[
        DataCell(Text('6')),
        DataCell(Text('Product 6')),
        DataCell(Text('60')),
      ]),
      const DataRow(cells: <DataCell>[
        DataCell(Text('7')),
        DataCell(Text('Product 7')),
        DataCell(Text('70')),
      ]),
      const DataRow(cells: <DataCell>[
        DataCell(Text('8')),
        DataCell(Text('Product 8')),
        DataCell(Text('80')),
      ]),
      const DataRow(cells: <DataCell>[
        DataCell(Text('9')),
        DataCell(Text('Product 9')),
        DataCell(Text('90')),
      ])
    ];
}