import 'package:flutter/material.dart';

class CountingItemWidget extends StatefulWidget {
  const CountingItemWidget({super.key});

  @override
  State<CountingItemWidget> createState() => _CountingItemWidgetState();
}

class _CountingItemWidgetState extends State<CountingItemWidget> {
  int count=1;
  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        FittedBox(
          child: SizedBox(
            height: 25,
            width: 25,
            child: ElevatedButton(
              onPressed: (){
                if(count>0){
                  count--;
                }
                setState(() {
                });
              },
              style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(0),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100)
                  )
              ),
              child: const Center(child: Icon(Icons.remove,size: 25,color: Colors.white,),),
            ),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Text(
          "$count",
          style: const TextStyle(
              fontWeight: FontWeight.bold, color: Colors.black54),
        ),
        const SizedBox(
          width: 10,
        ),
        FittedBox(
          child: SizedBox(
            height: 25,
            width: 25,
            child: ElevatedButton(
              onPressed: (){
                if(count<20){
                  count++;
                }
                setState(() {
                });
              },
              style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(0),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100)
                  )
              ),
              child: const Center(child: Icon(Icons.add,size: 25,color: Colors.white,),),
            ),
          ),
        ),
      ],
    );
  }
}