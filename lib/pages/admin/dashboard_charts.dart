import 'package:flutter/material.dart';

class DashboardChartsPage extends StatelessWidget {
  const DashboardChartsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard Charts'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Manage Dashboard Charts',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            Expanded(
              child: ListView.builder(
                itemCount: 10, // 임시 데이터 수
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      title: Text('Chart #$index'),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Data Source: Data source details here'),
                          Text('Last Updated: ${DateTime.now().subtract(Duration(days: index))}'),
                          Text('Details: Chart details here'),
                        ],
                      ),
                      trailing: IconButton(
                        icon: const Icon(Icons.edit),
                        onPressed: () {
                          // 차트 정보 수정 로직
                        },
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
