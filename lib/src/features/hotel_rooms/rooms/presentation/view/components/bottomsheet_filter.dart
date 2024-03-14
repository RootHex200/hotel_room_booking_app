import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hotel_room_booking/src/core/common/widgets/custom_button_widget.dart';
import 'package:hotel_room_booking/src/core/common/widgets/custom_space_widget.dart';
import 'package:hotel_room_booking/src/core/values/colors/app_colors.dart';
import 'package:hotel_room_booking/src/core/values/strings/app_strings.dart';
import 'package:hotel_room_booking/src/core/values/style/text_style.dart';
import 'package:hotel_room_booking/src/features/hotel_rooms/rooms/presentation/provider/drop_down_provider.dart';
import 'package:hotel_room_booking/src/features/hotel_rooms/rooms/presentation/provider/price_range_slider_provider.dart';

class BottomSheetFilter extends StatelessWidget {
  const BottomSheetFilter({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: AppColor.whiteBackgroundColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(50),
          topRight: Radius.circular(50),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisSize: MainAxisSize.max,
              //mainAxisAlignment: MainAxisAlignment.spaceEvenly,

              children: [
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      AppString.cancel,
                      style: mediumBoldBlackTextStyle,
                    )),
                Expanded(child: Container()),
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      AppString.filter,
                      style: blueColorBoldTextStyle,
                    )),
                Expanded(child: Container()),
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      AppString.reset,
                      style: mediumBoldBlackTextStyle,
                    )),
              ],
            ),
            const VerticalSpace(
              height: 10,
            ),
            const Text(
              AppString.sort,
              style: mediumBoldBlackTextStyle,
            ),
            const VerticalSpace(
              height: 10,
            ),
            Consumer(
              builder: (context, ref, child) {
                return DropdownButtonFormField<String>(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: AppColor.textFieldBorderColor),
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: AppColor.textFieldBorderColor),
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    labelText: AppString.sort,
                  ),
                  value: ref.watch(selectDropDownValueProvider),
                  style: smallBoldBlackTextStyle,
                  onChanged: (newValue) {
                    ref.read(selectDropDownValueProvider.notifier).state =
                        newValue!;
                  },
                  items: <String>[AppString.lowToHigh, AppString.highToLow]
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                );
              },
            ),
            const VerticalSpace(
              height: 10,
            ),
            const Text(
              AppString.priceRange,
              style: mediumBoldBlackTextStyle,
            ),
            const VerticalSpace(
              height: 10,
            ),
            Consumer(
              builder: (context, ref, child) {
                double start = ref.watch(startPriceRangeProvider);
                double end = ref.watch(endPriceRangeProvider);
                return RangeSlider(
                  activeColor: AppColor.primaryColor,
                  values: RangeValues(start, end),
                  labels: RangeLabels(start.toString(), end.toString()),
                  onChanged: (value) {
                    ref.read(startPriceRangeProvider.notifier).state =
                        value.start;
                    ref.read(endPriceRangeProvider.notifier).state = value.end;
                  },
                  min: 10.0,
                  max: 1000.0,
                );
              },
            ),
            Consumer(
              builder: (context, ref, child) {
                double start = ref.watch(startPriceRangeProvider);
                double end = ref.watch(endPriceRangeProvider);
                return Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    " \$ ${start.toInt()} - \$ ${end.toInt()}",
                    style: smallBoldBlackTextStyle,
                  ),
                );
              },
            ),
            const VerticalSpace(
              height: 20,
            ),
            const Align(
              alignment: Alignment.center,
              child: CustomButtonWidget(
                  height: 50, buttonText: AppString.apply, radius: 17),
            ),
            const VerticalSpace(
              height: 15,
            ),
          ],
        ),
      ),
    );
  }
}
