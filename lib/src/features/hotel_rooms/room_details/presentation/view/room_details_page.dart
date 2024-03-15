import 'package:flutter/material.dart';
import 'package:hotel_room_booking/src/core/common/widgets/custom_space_widget.dart';
import 'package:hotel_room_booking/src/core/values/strings/app_strings.dart';
import 'package:hotel_room_booking/src/core/values/style/text_style.dart';
import 'package:hotel_room_booking/src/features/hotel_rooms/room_details/presentation/view/components/book_now.dart';
import 'package:hotel_room_booking/src/features/hotel_rooms/room_details/presentation/view/components/contact_info.dart';
import 'package:hotel_room_booking/src/features/hotel_rooms/room_details/presentation/view/components/details_app_bar.dart';
import 'package:hotel_room_booking/src/features/hotel_rooms/room_details/presentation/view/components/gallery_list.dart';
import 'package:hotel_room_booking/src/features/hotel_rooms/room_details/presentation/view/components/rating_offer.dart';

class RoomDetailsPage extends StatelessWidget {
  const RoomDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const DetailsAppBar(),
            Expanded(
                child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 250,
                    width: MediaQuery.of(context).size.width,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("assets/images/room.png"))),
                  ),
                  const VerticalSpace(height: 20),
                  const Padding(
                      padding: EdgeInsets.only(left: 20, right: 20),
                      child: Text(
                        "${AppString.roomNumber}: 202",
                        style: mediumBoldBlackTextStyle,
                      )),
                  const VerticalSpace(height: 15),
                  const Padding(
                    padding: EdgeInsets.only(left: 20, right: 20),
                    child: RatingOffer(),
                  ),
                  const VerticalSpace(height: 20),
                  const Padding(
                      padding: EdgeInsets.only(left: 20, right: 20),
                      child: Text(
                        AppString.description,
                        style: mediumBoldBlackTextStyle,
                      )),
                  const VerticalSpace(height: 10),
                  const Padding(
                      padding: EdgeInsets.only(left: 20, right: 20),
                      child: Text(
                        AppString.tmpLong,
                        textAlign: TextAlign.justify,
                        style: grayColorTextStyle,
                      )),
                  const VerticalSpace(height: 20),
                  const Padding(
                      padding: EdgeInsets.only(left: 20, right: 20),
                      child: Text(
                        AppString.contact_info,
                        style: mediumBoldBlackTextStyle,
                      )),
                  const VerticalSpace(height: 10),
                  const Padding(
                    padding: EdgeInsets.only(left: 20, right: 20),
                    child: ContactInfo(),
                  ),
                  const VerticalSpace(height: 10),
                  const Padding(
                      padding: EdgeInsets.only(left: 20, right: 20),
                      child: Text(
                        AppString.gallery,
                        style: mediumBoldBlackTextStyle,
                      )),
                  const VerticalSpace(height: 10),
                  const Padding(
                    padding: EdgeInsets.only(left: 20, right: 20),
                    child: GalleryList(),
                  ),
                  const VerticalSpace(height: 10),
                ],
              ),
            )),
            const BookNow()
          ],
        ),
      ),
    );
  }
}
