import 'dart:async';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'dart:ui' as ui;
import 'dart:ui';

class NetworkImageCustomMarker extends StatefulWidget {
  const NetworkImageCustomMarker({super.key});

  @override
  State<NetworkImageCustomMarker> createState() =>
      _NetworkImageCustomMarkerState();
}

class _NetworkImageCustomMarkerState extends State<NetworkImageCustomMarker> {
  final Completer<GoogleMapController> _controller = Completer();

  static const CameraPosition _kGooglePlex =
      CameraPosition(target: LatLng(24.3561988, 85.2097204), zoom: 14);

  final List<Marker> _markers = <Marker>[];

  List<LatLng> _latLang = [
    LatLng(24.3561988, 85.2097204),
    LatLng(22.6671904, 87.5266336),
    LatLng(22.1981861, 87.9857629),
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadData();
  }

  Future <void> loadData() async {
    for (int i = 0; i < _latLang.length; i++) {
      Uint8List? image = await loadNetWorkImage("https://www.istockphoto.com/photo/beautiful-woman-gm1437324946-478155741");

      final ui.Codec markerImage =await ui.instantiateImageCodec(
        image.buffer.asUint8List(),
        targetHeight: 100,
        targetWidth: 100
      );

      final Ui.FrameInfo frameInfo = await markerImageCodec.getNextFrame();
      final ByteData byteData = await frameInfo.image.toByteData(
        frameInfoformat: ui.ImageByteFormat.png);

        final Uint8List resizedImageMarker = byteData.buffer.asUint8List();

      _markers.add(Marker(
          markerId: MarkerId(i.toString()),
          position: _latLang[i],

          icon: BitmapDescriptor.fromBytes(resizedImageMarker),
          infoWindow: InfoWindow(
            snippet: 'Title of marker' + i.toString())));

      setState(() {});
    }
  }

  Future <Uint8List< loadNetworkImage()   async {
    final complete = Completer<ImageInfo>();
    var image = NetworkImage(path);
    image.resolve(const ImageConfiguration()).addListener(ImageStreamListener(
      (info,_)=>Completer.complete(info))

      );
      final imageInfo = await Completer.future;
      final byteData = await imageInfo.image.byteData(formate: ui.ImageByteFormat.png);

      return byteData!.buffer.asUint8List();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: GoogleMap(
        initialCameraPosition: _kGooglePlex,
        mapType: MapType.normal,
        myLocationButtonEnabled: true,
        markers: Set<Marker>.of(_markers),
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
        },
      )),
    );
  }
 }

