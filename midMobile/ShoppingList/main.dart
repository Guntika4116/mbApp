import 'package:flutter/material.dart';

void main() {
  runApp(const MyShoppingApp());
}

class MyShoppingApp extends StatelessWidget {
  const MyShoppingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: ShoppingListScreen());
  }
}

class ShoppingListScreen extends StatefulWidget {
  @override
  _ShoppingListScreenState createState() => _ShoppingListScreenState();
}

class _ShoppingListScreenState extends State<ShoppingListScreen> {
  final TextEditingController _controller = TextEditingController();

  List<String> items = ['โยเกิร์ต', 'ผักสลัด', 'โมจิ'];

  void addItem() {
    setState(() {
      items.add(_controller.text);
      _controller.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('ตะกร้าของ น้ำขิง')),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _controller,
              decoration: InputDecoration(
                labelText: 'เพิ่มชื่อสินค้า',
                suffixIcon: IconButton(
                  icon: Icon(Icons.send),
                  onPressed: addItem,
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: items.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(items[index]),
                  leading: IconButton(
                    icon: Icon(Icons.edit),
                    onPressed: (){
                      setState(() {
                        items[index] = items[index] + "(แก้ไขแล้ว)";
                      });
                    },
                  ),
                  trailing: IconButton(
                    icon: Icon(
                      Icons.delete,
                      color: Colors.red,
                    ), // ใส่สีแดงให้ดูเหมือนปุ่มลบ
                    onPressed: () {
                      setState(() {
                        items.removeAt(index); // "ลบของที่ลำดับนี้ออกซะ"
                      });
                    },
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
