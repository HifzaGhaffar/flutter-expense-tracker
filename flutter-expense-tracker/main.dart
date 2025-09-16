import 'package:flutter/material.dart';

void main() {
  runApp(ExpenseTrackerApp());
}

class ExpenseTrackerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ExpenseHomePage(),
    );
  }
}

class ExpenseHomePage extends StatefulWidget {
  @override
  _ExpenseHomePageState createState() => _ExpenseHomePageState();
}

class _ExpenseHomePageState extends State<ExpenseHomePage> {
  final List<Map<String, dynamic>> _expenses = [];
  final TextEditingController _amountController = TextEditingController();
  String _selectedCategory = 'Food';

  void _addExpense() {
    if (_amountController.text.isEmpty) return;
    double? amount = double.tryParse(_amountController.text);
    if (amount == null || amount <= 0) return;

    setState(() {
      _expenses.add({
        'amount': amount,
        'category': _selectedCategory,
        'date': DateTime.now(),
      });
      _amountController.clear();
    });
  }

  void _deleteExpense(int index) {
    setState(() {
      _expenses.removeAt(index);
    });
  }

  double get _totalExpense {
    return _expenses.fold(0.0, (sum, item) => sum + item['amount']);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Expense Tracker')),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _amountController,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      labelText: 'Enter amount',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                SizedBox(width: 8),
                DropdownButton<String>(
                  value: _selectedCategory,
                  items: ['Food', 'Travel', 'Shopping', 'Other']
                      .map((cat) => DropdownMenuItem(
                            child: Text(cat),
                            value: cat,
                          ))
                      .toList(),
                  onChanged: (value) {
                    setState(() {
                      _selectedCategory = value!;
                    });
                  },
                ),
                SizedBox(width: 8),
                ElevatedButton(
                  onPressed: _addExpense,
                  child: Text('Add'),
                ),
              ],
            ),
          ),
          Text(
            'Total: \$${_totalExpense.toStringAsFixed(2)}',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: _expenses.length,
              itemBuilder: (context, index) {
                final expense = _expenses[index];
                return ListTile(
                  title: Text(
                      '${expense['category']} - \$${expense['amount'].toStringAsFixed(2)}'),
                  subtitle: Text(
                      '${expense['date'].toString().split(' ')[0]}'),
                  trailing: IconButton(
                    icon: Icon(Icons.delete, color: Colors.red),
                    onPressed: () => _deleteExpense(index),
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
