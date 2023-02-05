import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticketbooking/screens/ticke_view.dart';

import '../utils/app_info_list.dart';
import '../utils/app_styles.dart';
class AppTicketTabs extends StatelessWidget {
  const AppTicketTabs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 0),
        child: Stack(
          children: [
            ListView(
              children: [
                Text('Tickets', style: Styles.headLineStyle1.copyWith(fontSize: 35),),
                const Gap(20),
                Container(
                  width: double.maxFinite,
                  padding: const EdgeInsets.all(3.5),
                  decoration: BoxDecoration(
                    color: const Color(0xFFF4F6FD),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                bottomLeft: Radius.circular(20),
                              )),
                          child: Center(
                            child: Text(
                              'Upcoming',
                              style: Styles.textStyle,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          margin: const EdgeInsets.symmetric(vertical: 12),
                          child: Center(
                            child: Text(
                              'Previous',
                              style: Styles.textStyle,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const Gap(20),
                Container(
                  height: 520,
                  width: double.maxFinite,
                  margin: const EdgeInsets.symmetric(horizontal: 15),
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children:  [
                              Text('NYC', style: Styles.headLineStyle3.copyWith(color: Styles.textColor),),
                              const Gap(6),
                              Text('New-York',  style: Styles.headLineStyle4,),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    padding: const EdgeInsets.all(3.0),
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(width: 2.0,color: Colors.lightBlueAccent),
                                    ),
                                  ),
                                  const Gap(10),
                                  Transform.rotate( angle:1.58 , child: const Icon(Icons.flight_outlined, color: Colors.blueAccent,),),
                                  const Gap(10),
                                  Container(
                                    padding: const EdgeInsets.all(3.0),
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(width: 2.0,color: Colors.lightBlueAccent),
                                    ),
                                  ),
                                ],
                              ),
                              const Gap(2),
                              Text('8H 30M', style: Styles.headLineStyle4,),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children:  [
                              Text('LDN', style: Styles.headLineStyle3.copyWith(color: Styles.textColor),),
                              const Gap(6),
                              Text('London', style: Styles.headLineStyle4,)
                            ],
                          ),
                        ],
                      ),
                      const Gap(20),
                      SizedBox(
                        width: double.maxFinite,
                        child: LayoutBuilder(builder: (BuildContext context, BoxConstraints constraints){
                          return Flex(mainAxisAlignment: MainAxisAlignment.spaceBetween,direction: Axis.horizontal, children: List.generate((constraints.constrainWidth()/15).floor(), (index) => const SizedBox(
                            height: 1,
                            width: 5,
                            child: DecoratedBox(
                              decoration: BoxDecoration(
                                color: Colors.grey,
                              ),
                            ),
                          ),),);
                        }),
                      ),
                      const Gap(20),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children:  [
                              Text('1 May', style: Styles.headLineStyle3.copyWith(color: Styles.textColor),),
                              const Gap(6),
                              Text('Date',  style: Styles.headLineStyle4,),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text('08:00 AM', style: Styles.headLineStyle3.copyWith(color: Styles.textColor),),
                              const Gap(6),
                              Text('Departure time', style: Styles.headLineStyle4,),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children:  [
                              Text('23', style: Styles.headLineStyle3.copyWith(color: Styles.textColor),),
                              const Gap(6),
                              Text('Number', style: Styles.headLineStyle4,)
                            ],
                          ),
                        ],
                      ),
                      const Gap(40),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children:  [
                              Text('Flutter DB', style: Styles.headLineStyle3.copyWith(color: Styles.textColor),),
                              const Gap(6),
                              Text('Passenger',  style: Styles.headLineStyle4,),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children:  [
                              Text('5221 364869', style: Styles.headLineStyle3.copyWith(color: Styles.textColor),),
                              const Gap(6),
                              Text('passport', style: Styles.headLineStyle4,)
                            ],
                          ),
                        ],
                      ),
                      const Gap(40),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children:  [
                              Text('364738 28274478', style: Styles.headLineStyle3.copyWith(color: Styles.textColor),),
                              const Gap(6),
                              Text('Number of E-Ticket',  style: Styles.headLineStyle4,),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children:  [
                              Text('B2SG28', style: Styles.headLineStyle3.copyWith(color: Styles.textColor),),
                              const Gap(6),
                              Text('Booking code', style: Styles.headLineStyle4,),
                            ],
                          ),
                        ],
                      ),
                      const Gap(40),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children:  [
                              Row(
                                children: [
                                  Container(
                                    width: 50,
                                    height: 15,
                                    decoration: const BoxDecoration(
                                      image:
                                        DecorationImage(
                                          image: AssetImage('assets/images/visa.png',),fit: BoxFit.cover,
                                        ),
                                    ),
                                  ),
                                  Text(' *** 2462',  style: Styles.headLineStyle3.copyWith(color: Styles.textColor),),
                                ],
                              ),
                              const Gap(6),
                              Text('Payment Method',  style: Styles.headLineStyle4,),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children:  [
                              Text('\$249.99', style: Styles.headLineStyle3.copyWith(color: Styles.textColor),),
                              const Gap(6),
                              Text('Price', style: Styles.headLineStyle4,),
                            ],
                          ),
                        ],
                      ),
                      const Gap(30),

                      Container(
                        margin: const EdgeInsets.all(10),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: BarcodeWidget(
                            barcode: Barcode.code128(), data: 'https://www.google.com',
                            drawText: false,
                            color: Styles.textColor,
                            width: double.maxFinite,
                            height: 58,
                          ),
                        ),
                      ),

                    ],
                  ),
                ),
                const Gap(20),
                Padding(
                  padding: const EdgeInsets.only(left: 0, right:14 ),
                  child: TicketView(ticket: ticketList[0],),
                )
              ],
            ),
            Positioned(
              top: 310,
              left: 5,
              child: Container(
                padding: const EdgeInsets.all(2.0),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(width: 2.0, color: Colors.black),
                  color: Colors.transparent,
                ),
                child: Container(
                  width: 6,
                  height: 6,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 310,
              right: 5,
              child: Container(
                padding: const EdgeInsets.all(2.0),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(width: 2.0, color: Colors.black),
                  color: Colors.transparent,
                ),
                child: Container(
                  width: 6,
                  height: 6,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
