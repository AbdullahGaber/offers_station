import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:offers_station/src/widgets/advertisement_widget.dart';
import 'package:offers_station/src/widgets/provider_header_widget.dart';
import '../../helper/mediaQuery.dart';

class ProviderProfileScreen extends StatefulWidget {
  @override
  _ProviderProfileScreenState createState() => _ProviderProfileScreenState();
}

class _ProviderProfileScreenState extends State<ProviderProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          color: Theme.of(context).primaryColor,
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {},
        ),
      ),
      body: Column(
        children: [
          ProviderHeaderWidget(),
          SizedBox(
            height: context.height * 0.01,
          ),
          Container(
              width: context.width * 0.9,
              height: context.height * 0.2,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(9),
                child: GoogleMap(
                  initialCameraPosition: CameraPosition(
                    target: LatLng(
                      33.515154,
                      32.56565654,
                    ),
                  ),
                  scrollGesturesEnabled: false,
                  zoomControlsEnabled: false,
                  zoomGesturesEnabled: false,
                  markers: {
                    Marker(
                      markerId: MarkerId('sssss'),
                      position: LatLng(
                        33.515154,
                        32.56565654,
                      ),
                    ),
                  },
                ),
              )),
          SizedBox(
            height: context.height * 0.01,
          ),
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                width: context.width * 0.9,
                height: context.height * 0.2,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(9),
                  child: Image.asset(
                    'assets/images/pizza.jpg',
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Positioned(
                top: context.height * 0.05,
                child: ImageIcon(
                  AssetImage(
                    'assets/icons/youtube.png',
                  ),
                  color: Colors.red,
                  size: context.height * 0.11,
                ),
              ),
            ],
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: EdgeInsets.only(right: context.width * 0.06),
              child: Text(
                'العروض',
                style: TextStyle(
                  color: Colors.black54,
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
            ),
          ),
          SizedBox(
            height: context.height * 0.01,
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  AdvertisementWidget(),
                  AdvertisementWidget(),
                  AdvertisementWidget(),
                  AdvertisementWidget(),
                  AdvertisementWidget(),
                  AdvertisementWidget(),
                  AdvertisementWidget(),
                  AdvertisementWidget(),
                  AdvertisementWidget(),
                  AdvertisementWidget(),
                  AdvertisementWidget(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
