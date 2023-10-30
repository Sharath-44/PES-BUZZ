import 'package:flutter/material.dart';
import 'package:pesbuzz/theme/palette.dart';
import 'package:pesbuzz/widgets/image_container.dart';
import '/models/news_item_model.dart';

class EventDetailScreen extends StatelessWidget {
  final NewsItemModel newsItem;

  const EventDetailScreen({super.key, required this.newsItem});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // title: const Text('Event Details'),
        backgroundColor: AppColors.transparentColor,
        iconTheme: IconThemeData(color: AppColors.blackColor),
        elevation: 0,
      ),
      extendBodyBehindAppBar: true,
      body: SingleChildScrollView(
        // Use ListView if adding another child...
        // physics: const BouncingScrollPhysics(),
        // padding: const EdgeInsets.all(0),
        child: Stack(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height,
              width: double.infinity,
            ),
            ImageContainer(
              height: MediaQuery.of(context).size.height * 0.45,
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
              imageUrl: newsItem.imageUrl,
            ),
            Positioned(
              top: MediaQuery.of(context).size.height * 0.4,
              child: Container(
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.6,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 10,
                      offset: const Offset(1, 1),
                      color: AppColors.greyColor,
                    )
                  ],
                  color: AppColors.whiteColor,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: ListView(
                  physics: const BouncingScrollPhysics(),
                  padding: const EdgeInsets.fromLTRB(10, 20, 10, 0),
                  children: [
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Flexible(
                          child: Text(
                            overflow: TextOverflow.ellipsis,
                            newsItem.clubName,
                            style: Theme.of(context)
                                .textTheme
                                .labelLarge!
                                .copyWith(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 18,
                                  color: AppColors.blackColor,
                                ),
                          ),
                        ),
                        Text(
                          overflow: TextOverflow.ellipsis,
                          newsItem.date,
                          style:
                              Theme.of(context).textTheme.bodyLarge!.copyWith(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 15,
                                    color: AppColors.blackColor,
                                  ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 25),
                    Text(
                      newsItem.headline,
                      overflow: TextOverflow.visible,
                      style:
                          Theme.of(context).textTheme.headlineMedium!.copyWith(
                                fontWeight: FontWeight.bold,
                                fontSize: 24,
                                height: 1.25,
                                color: AppColors.blackColor,
                              ),
                    ),
                    const SizedBox(height: 20),
                    Text(
                      newsItem.description,
                      overflow: TextOverflow.visible,
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                            fontWeight: FontWeight.w500,
                            fontSize: 18,
                            height: 1.25,
                            color: AppColors.blackColor,
                          ),
                    ),
                    const SizedBox(height: 10),
                  ],
                ),
              ),
            ),
          ],
        ),
        // Text("This is the bottom content"),
      ),
    );
  }
}
