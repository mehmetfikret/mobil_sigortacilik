import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_sigorta/myPolicies/policies_details.dart';

class MyPolicies extends StatelessWidget {
  const MyPolicies({super.key});

  @override
  Widget build(BuildContext context) {
    /*
    return ListView.separated(
      itemCount: 5,
      itemBuilder: (context, index) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => PoliciesDetails(), 
          ),
        );
      },
      child: Divider(color: Colors.transparent),
    );
  },
      separatorBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.only(left: 8, right: 8),
          child: GestureDetector(
            onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => PoliciesDetails(), 
          ),
        );
      },
            child: Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: const Color(0xFFF8F8F8),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                children: [
                  Container(
                    height: 100,
                    width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        image: AssetImage("assets/images/mercedes1.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Flexible(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            RichText(
                              text: TextSpan(
                                children: [
                                  WidgetSpan(
                                    alignment: PlaceholderAlignment.middle,
                                    child: Container(
                                      width: 6,
                                      height: 5,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.green,
                                      ),
                                    ),
                                  ),
                                  TextSpan(
                                    text: "Aktif",
                                    style: TextStyle(color: Colors.green),
                                  ),
                                ],
                              ),
                            ),
                            Text("₺150.00", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),)
                          ],
                        ),
                        Text(
                          "Otomobil Sigortası",
                          style: const TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Otomobil numarası: GJ971235 ",
                          style: TextStyle(color: const Color.fromARGB(221, 77, 64, 64)),
                          maxLines: 3,
                        ),
                        Text(
                          "08.05.2024",
                          style:
                              const TextStyle(fontSize: 14, color: Colors.black, fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );

    */
    return ListView(
  padding: const EdgeInsets.all(8),
  children: [
    GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const PoliciesDetails(),
          ),
        );
      },
      child: Container(
        padding: const EdgeInsets.all(10),
        margin: const EdgeInsets.only(bottom: 8),
        decoration: BoxDecoration(
          color: const Color(0xFFF8F8F8),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          children: [
            Container(
              height: 100,
              width: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: const DecorationImage(
                  image: AssetImage("assets/images/1.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(width: 5),
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RichText(
                        text: TextSpan(
                          children: [
                            WidgetSpan(
                              alignment: PlaceholderAlignment.middle,
                              child: Container(
                                width: 6,
                                height: 5,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.green,
                                ),
                              ),
                            ),
                            const TextSpan(
                              text: "Aktif",
                              style: TextStyle(color: Colors.green),
                            ),
                          ],
                        ),
                      ),
                      const Text(
                        "₺150.00",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  const Text(
                    "Otomobil Sigortası",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Text(
                    "Otomobil numarası: GJ971235 ",
                    style: TextStyle(
                      color: Color.fromARGB(221, 77, 64, 64),
                    ),
                    maxLines: 3,
                  ),
                  const Text(
                    "08.05.2024",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    ),
    // İkinci liste öğesi
    GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const PoliciesDetails(),
          ),
        );
      },
      child: Container(
        padding: const EdgeInsets.all(10),
        margin: const EdgeInsets.only(bottom: 8),
        decoration: BoxDecoration(
          color: const Color(0xFFF8F8F8),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          children: [
            Container(
              height: 100,
              width: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: const DecorationImage(
                  image: AssetImage("assets/images/2.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(width: 5),
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RichText(
                        text: TextSpan(
                          children: [
                            WidgetSpan(
                              alignment: PlaceholderAlignment.middle,
                              child: Container(
                                width: 6,
                                height: 5,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.green,
                                ),
                              ),
                            ),
                            const TextSpan(
                              text: "Aktif",
                              style: TextStyle(color: Colors.green),
                            ),
                          ],
                        ),
                      ),
                      const Text(
                        "₺200.00",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  const Text(
                    "Sağlık Sigortası",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Text(
                    "Sigorta numarası: GH671245 ",
                    style: TextStyle(
                      color: Color.fromARGB(221, 77, 64, 64),
                    ),
                    maxLines: 3,
                  ),
                  const Text(
                    "15.06.2024",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    ),
    // Daha fazla öğe ekleyebilirsiniz
  ],
);

  }
}
