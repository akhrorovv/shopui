import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange,
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Phone Products', style: TextStyle(fontFamily: 'Quicksand'),),
        leading: const Icon(Icons.menu),
        backgroundColor: Colors.deepOrange,
        actions: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
              width: 36,
              height: 30,
              decoration: BoxDecoration(
                color: Colors.orange,
                borderRadius: BorderRadius.circular(10)
              ),
              child: const Center(
                child: Text('7', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
              ),
            ),
          )
        ],
      ),

      body: Container(
        color: Colors.deepOrange,
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [

            // #header
            Container(
              width: double.infinity,
              height: 250,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                image: const DecorationImage(
                  image: AssetImage('assets/images/apple-products.jpg'),
                  fit: BoxFit.cover
                )
              ),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  gradient: LinearGradient(
                    begin: Alignment.bottomRight,
                    colors: [
                      Colors.black.withOpacity(.8),
                      Colors.black.withOpacity(.01)
                    ]
                  )
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    //const Text('Lifestyle sale', style: TextStyle(fontSize: 50, color: Colors.white, fontFamily: 'Quicksand'),),
                    //const SizedBox(height: 40,),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 40),
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(17),
                        color: Colors.white
                      ),
                      child: const Center(
                        child: Text('Shop now', style: TextStyle(fontFamily: 'Quicksand', fontSize: 20),),
                      ),
                    ),
                    const SizedBox(height: 20,),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 16,),

            // #body
            Expanded(
                child: GridView.count(
                  mainAxisSpacing: 15,
                  crossAxisCount: 1,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        image: const DecorationImage(
                            image: AssetImage('assets/images/image2.jpg'),
                            fit: BoxFit.cover
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Icon(Icons.favorite, color: Colors.red, size: 30,)
                        ],
                      ),
                    ),
                    
                    Container(
                      padding: const EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        image: const DecorationImage(
                            image: AssetImage('assets/images/image1.jpg'),
                            fit: BoxFit.cover
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Icon(Icons.favorite, color: Colors.red, size: 30,)
                        ],
                      ),
                    ),

                    Container(
                      padding: const EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        image: const DecorationImage(
                          image: AssetImage('assets/images/card-smartphones.jpg'),
                          fit: BoxFit.cover
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Icon(Icons.favorite, color: Colors.red, size: 30,)
                        ],
                      ),
                    ),

                    Container(
                      padding: const EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        image: const DecorationImage(
                            image: AssetImage('assets/images/Mobile-by-Peak-Design-7.jpg'),
                            fit: BoxFit.cover
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Icon(Icons.favorite, color: Colors.red, size: 30,)
                        ],
                      ),
                    ),


                  ],
                )
            )
          ],
        ),
      ),
    );
  }
}
