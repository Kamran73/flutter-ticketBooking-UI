import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticketbooking/utils/app_layout.dart';
import 'package:ticketbooking/widgets/thick_container.dart';

import '../utils/app_styles.dart';

class TicketView extends StatelessWidget {
  const TicketView({Key? key, required this.ticket}) : super(key: key);

  final Map<String, dynamic> ticket;

  @override
  Widget build(BuildContext context) {
    final Size size = AppLayout().getSize(context);
    return SizedBox(
      width: size.width*0.85,
      height: 200,
      child: Column(
        children: [
          //responsible for blue part of the card
          Container(
            margin: const EdgeInsets.only(left: 16),
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(21),
                    topLeft: Radius.circular(21)),
                color: Color(0xFF526799)),
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      ticket['from']['code'],
                      style: Styles.headLineStyle3.copyWith(color: Colors.white),
                    ),
                    const Spacer(),
                    thickContainer(),
                    Expanded(
                      child: Stack(
                        children: [
                          SizedBox(
                            height: 24,
                            child: LayoutBuilder(
                              builder: (BuildContext context, BoxConstraints constraints) {
                                debugPrint('height is ${constraints.constrainHeight()}');
                                debugPrint('width is ${constraints.constrainWidth()}');
                                return Flex(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  direction: Axis.horizontal,
                                  children: List.generate((constraints.constrainWidth() / 6).floor(), (index) {
                                    return const SizedBox(
                                      height: 1,
                                      width: 3,
                                      child: DecoratedBox(
                                          decoration:
                                          BoxDecoration(color: Colors.white)),
                                    );
                                  }),
                                );
                              },
                            ),
                          ),
                          Center(child: Transform.rotate(angle: 1.58, child: const Icon(Icons.local_airport, color: Colors.white,)),)
                        ],
                      ),
                    ),
                    thickContainer(),
                    const Spacer(),
                    Text(
                      ticket['to']['code'],
                      style: Styles.headLineStyle3.copyWith(color: Colors.white),
                    ),
                  ],
                ),
                const Gap(3),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(ticket['from']['name'], style: Styles.headLineStyle4.copyWith(color: Colors.white),),
                    Text(ticket['flying_time'], style: Styles.headLineStyle4.copyWith(color: Colors.white),),
                    Text(ticket['to']['name'], style: Styles.headLineStyle4.copyWith(color: Colors.white),),
                  ],
                ),
              ],
            ),
          ),
          //responsible for orange part of ticket
          Container(
            margin: const EdgeInsets.only(left: 16),
            color: Styles.orangeColor,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:  [
                const SizedBox(
                  height: 20,
                  width: 10,
                  child: DecoratedBox( decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(topRight: Radius.circular(20), bottomRight: Radius.circular(20),),
                  ),),
                ),
                Expanded(child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: LayoutBuilder(builder: (BuildContext context, BoxConstraints constraints){
                    return Flex(direction: Axis.horizontal,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.max,
                      children: List.generate((constraints.constrainWidth()/15).floor(), (index) {
                      return const SizedBox(
                        height: 1,
                        width: 5,
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                            color: Colors.white,
                          ),
                        ),
                      );
                    }),);
                  }),
                )),
                const SizedBox(
                  height: 20,
                  width: 10,
                  child: DecoratedBox( decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(20), bottomLeft: Radius.circular(20),),
                  ),),
                ),
              ],
            ),
          ),

          /*

          bottom part of orange card ticket

           */

          Container(
            margin: const EdgeInsets.only(left: 16),
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                    bottomRight: Radius.circular(21),
                    bottomLeft: Radius.circular(21)),
                color: Styles.orangeColor),
            padding: const EdgeInsets.only(top: 10, right: 16, left: 16, bottom: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(ticket['date'], style: Styles.headLineStyle3.copyWith(color: Colors.white),),
                    const Gap(5),
                    Text('Date', style: Styles.headLineStyle4.copyWith(color: Colors.white),),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(ticket['departure_time'], style: Styles.headLineStyle3.copyWith(color: Colors.white),),
                    const Gap(5),
                    Text('Departure time', style: Styles.headLineStyle4.copyWith(color: Colors.white),),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(ticket['number'].toString(), style: Styles.headLineStyle3.copyWith(color: Colors.white),),
                    const Gap(5),
                    Text('Number', style: Styles.headLineStyle4.copyWith(color: Colors.white),),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
