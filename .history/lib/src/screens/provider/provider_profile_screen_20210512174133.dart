import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
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
              width: context.width * 0.8,
              height: context.height * 0.3,
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
                ma
                ),
              )),
        ],
      ),
    );
  }
}
