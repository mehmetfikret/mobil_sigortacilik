import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SeeBenefits extends StatelessWidget {
  const SeeBenefits({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kapsamlı Plan'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Diğer araçlara ve mülke verilen zararları karşılar',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 16),
              _buildSectionTitle('Neleri kapsar'),
              const SizedBox(height: 8),
              _buildCoveredItem('Aracınıza verilen zararları karşılar'),
              _buildDescription(
                  'Sigorta, belirsiz olaylardan kaynaklanan belirli risk türlerinden koruma sağlayan bir hizmettir. Kişiye ölüm veya kişisel mülke zarar gelmesi durumunda belirli bir miktar para vaadiyle güvence verir. Sigortalı, bu güvence karşılığında prim ödemelidir.'),
              const SizedBox(height: 16),
              _buildCoveredItem('Aracınıza verilen zararları karşılar'),
              _buildDescription(
                  'Hayat sigortası satın almak, eşinizi ve çocuklarınızı size bir şey olması durumunda ortaya çıkabilecek yıkıcı mali kayıplardan korur.'),
              const SizedBox(height: 16),
              _buildSectionTitle('Neleri kapsamaz'),
              const SizedBox(height: 8),
              _buildNotCoveredItem('Kendi aracınıza verilen zararlar'),
              _buildDescription(
                  'Sigorta, belirsiz olaylardan kaynaklanan belirli risk türlerinden koruma sağlayan bir hizmettir. Kişiye ölüm veya kişisel mülke zarar gelmesi durumunda belirli bir miktar para vaadiyle güvence verir. Sigortalı, bu güvence karşılığında prim ödemelidir.'),
              const SizedBox(height: 16),
              _buildNotCoveredItem('Yasa dışı sürüş'),
              _buildDescription(
                  'Hayat sigortası satın almak, eşinizi ve çocuklarınızı size bir şey olması durumunda ortaya çıkabilecek yıkıcı mali kayıplardan korur.'),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color.fromARGB(255, 105, 43, 118),
            foregroundColor: Colors.white
          ),
          child: Text('Tamam, anladım'),
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Text(
      title,
      style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
    );
  }

  Widget _buildCoveredItem(String title) {
    return Row(
      children: [
        const Icon(Icons.check_circle, color: Colors.green),
        const SizedBox(width: 8),
        Text(
          title,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
        ),
      ],
    );
  }

  Widget _buildNotCoveredItem(String title) {
    return Row(
      children: [
        const Icon(Icons.cancel, color: Colors.red),
        const SizedBox(width: 8),
        Text(
          title,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
        ),
      ],
    );
  }

  Widget _buildDescription(String description) {
    return Padding(
      padding: const EdgeInsets.only(left: 32.0, top: 8.0, bottom: 16.0),
      child: Text(
        description,
        style: const TextStyle(fontSize: 14),
      ),
    );
  }
}
