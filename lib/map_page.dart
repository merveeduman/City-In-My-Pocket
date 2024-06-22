import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapPage extends StatelessWidget {
  final String country;
  final String city;
  final String district;
  final String option;
  final int cardNumber;

  MapPage({
    required this.country,
    required this.city,
    required this.district,
    required this.option,
    required this.cardNumber,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Selected Option',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Card(
                color: Colors.black87,
                elevation: 8,
                child: SizedBox(
                    height: 50, child: _buildInfo('Country', country))),
            Card(
                color: Colors.black87,
                elevation: 8,
                child: SizedBox(height: 50, child: _buildInfo('City', city))),
            Card(
                color: Colors.black87,
                elevation: 8,
                child: SizedBox(
                    height: 50, child: _buildInfo('District', district))),
            Card(
                color: Colors.black87,
                elevation: 8,
                child:
                    SizedBox(height: 50, child: _buildInfo('Option', option))),
            _buildMap(),
          ],
        ),
      ),
    );
  }

  Widget _buildInfo(String title, String value) {
    return Container(
      padding: EdgeInsets.all(4.0),
      margin: EdgeInsets.all(6.0),
      decoration: BoxDecoration(
        color: Colors.green,
        borderRadius: BorderRadius.circular(6.0),
      ),
      child: Center(
        child: Text(
          '$title: $value',
          style: TextStyle(
              fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
    );
  }

  Widget _buildMap() {
    return Container(
      height: 350,
      child: GoogleMap(
        initialCameraPosition: CameraPosition(
          target: LatLng(38.7348, 35.4674),
          zoom: 12.0,
        ),
        markers: _getMarkers(),
      ),
    );
  }

  Set<Marker> _getMarkers() {
    Set<Marker> markers = {};
//----HASTANE---
    if (district == 'Kocasinan' && cardNumber == 2) {
      markers.add(
        Marker(
          markerId: MarkerId('hospital_marker'),
          position: LatLng(38.768018, 35.411660),
          infoWindow: InfoWindow(
            title: 'Kayseri Şehir Hastanesi',
            snippet: 'Hospital Address: Kocasinan/Kayseri',
          ),
        ),
      );

      markers.add(
        Marker(
          markerId: MarkerId('hospital_marker'),
          position: LatLng(38.727615, 35.478733),
          infoWindow: InfoWindow(
            title: 'Kayseri Devlet Hastanesi',
            snippet: 'Hospital Address: Kocasinan/Kayseri',
          ),
        ),
      );
      markers.add(
        Marker(
          markerId: MarkerId('hospital_marker'),
          position: LatLng(38.72986990950953, 35.47962805798571),
          infoWindow: InfoWindow(
            title: 'Kayseri Ömür Hastanesi',
            snippet: 'Örnekevler, Çiçek Sk. NO:28, 38010',
          ),
        ),
      );
      markers.add(
        Marker(
          markerId: MarkerId('hospital_marker'),
          position: LatLng(38.74172029628591, 35.50881048999145),
          infoWindow: InfoWindow(
            title: 'Kayseri Hayat Hastanesi',
            snippet: 'Cumhuriyet, 222. Sk. No:68 D:01, 38110',
          ),
        ),
      );
    }
//----CAFE----
    else if (district == 'Kocasinan' && cardNumber == 5) {
      markers.add(
        Marker(
          markerId: MarkerId('cafe_marker'),
          position: LatLng(38.78027512230978, 35.4248552479026),
          infoWindow: InfoWindow(
            title: 'Coffee Shop',
            snippet: 'Cafe Address: Caribou Coffee',
          ),
        ),
      );
      markers.add(
        Marker(
          markerId: MarkerId('cafe_marker'),
          position: LatLng(38.7671127196327, 35.412504881187196),
          infoWindow: InfoWindow(
            title: 'Coffee Shop',
            snippet: 'Cafe Address: The House',
          ),
        ),
      );
      markers.add(
        Marker(
          markerId: MarkerId('cafe_marker'),
          position: LatLng(38.73649798802834, 35.468201538016764),
          infoWindow: InfoWindow(
            title: 'Coffee Shop',
            snippet: 'Cafe Address: Ödül Café Patisserie',
          ),
        ),
      );
      markers.add(
        Marker(
          markerId: MarkerId('cafe_marker'),
          position: LatLng(38.72546152323112, 35.48726031472509),
          infoWindow: InfoWindow(
            title: 'Coffee Shop',
            snippet: 'Cafe Address: Green Flower Café',
          ),
        ),
      );
      markers.add(
        Marker(
          markerId: MarkerId('cafe_marker'),
          position: LatLng(38.72519187136611, 35.486916986343275),
          infoWindow: InfoWindow(
            title: 'Coffee Shop',
            snippet: 'Cafe Address: Muhabbet Café ',
          ),
        ),
      );

      markers.add(
        Marker(
          markerId: MarkerId('cafe_marker'),
          position: LatLng(38.72409932999848, 35.48641831472415),
          infoWindow: InfoWindow(
            title: 'Coffee Shop',
            snippet: 'Cafe Address: Café Arka Bahçe',
          ),
        ),
      );
      markers.add(
        Marker(
          markerId: MarkerId('cafe_marker'),
          position: LatLng(38.724921404486636, 35.49403956869479),
          infoWindow: InfoWindow(
            title: 'Coffee Shop',
            snippet: 'Cafe Address: Uğrak Café',
          ),
        ),
      );
      markers.add(
        Marker(
          markerId: MarkerId('cafe_marker'),
          position: LatLng(38.72535568167382, 35.493356776098395),
          infoWindow: InfoWindow(
            title: 'Coffee Shop',
            snippet: 'Cafe Address: Sefam Café',
          ),
        ),
      );

      markers.add(
        Marker(
          markerId: MarkerId('cafe_marker'),
          position: LatLng(38.724325284335976, 35.48764621472441),
          infoWindow: InfoWindow(
            title: 'Coffee Shop',
            snippet: 'Cafe Address: Sote Café',
          ),
        ),
      );

      markers.add(
        Marker(
          markerId: MarkerId('cafe_marker'),
          position: LatLng(38.73459242287647, 35.480263836942),
          infoWindow: InfoWindow(
            title: 'Coffee Shop',
            snippet: 'Cafe Address: The Lava Café',
          ),
        ),
      );
    }
    //---library--
    else if (district == 'Kocasinan' && cardNumber == 4) {
      markers.add(
        Marker(
          markerId: MarkerId('library_marker'),
          position: LatLng(38.747506687838886, 35.445800283973796),
          infoWindow: InfoWindow(
            title: 'ZİYA GÖKALP SEMT KÜTÜPHANESİ',
            snippet: 'Kocasinan/Kayseri',
          ),
        ),
      );
      markers.add(
        Marker(
          markerId: MarkerId('library_marker'),
          position: LatLng(38.72638344587133, 35.49553298912183),
          infoWindow: InfoWindow(
            title: 'Kayseri Merkez Kütüphane',
            snippet: 'Kocasinan/Kayseri',
          ),
        ),
      );
      markers.add(
        Marker(
          markerId: MarkerId('library_marker'),
          position: LatLng(38.75393267304721, 35.51583812078756),
          infoWindow: InfoWindow(
            title: 'ARGINCIK SEMT KÜTÜPHANESİ',
            snippet: 'Kocasinan/Kayseri',
          ),
        ),
      );
      markers.add(
        Marker(
          markerId: MarkerId('library_marker'),
          position: LatLng(38.74804220869932, 35.51446482986965),
          infoWindow: InfoWindow(
            title: 'Fuat Attaroğlu Çocuk Kütüphanesi',
            snippet: 'Kocasinan/Kayseri',
          ),
        ),
      );
      markers.add(
        Marker(
          markerId: MarkerId('library_marker'),
          position: LatLng(38.78852097274561, 35.45443443568993),
          infoWindow: InfoWindow(
            title: 'Erkilet Kütüphanesi',
            snippet: 'Kocasinan/Kayseri',
          ),
        ),
      );
    }

    //---müze---
    else if (district == 'Kocasinan' && cardNumber == 9) {
      markers.add(
        Marker(
          markerId: MarkerId('museum_marker'),
          position: LatLng(38.7392097854671, 35.47216768893075),
          infoWindow: InfoWindow(
            title: 'Cumhurbaşkanlığı Abdullah Gül Müze ve Kütüphanesi',
            snippet: 'Kocasinan/Kayseri',
          ),
        ),
      );

      markers.add(
        Marker(
          markerId: MarkerId('museum_marker'),
          position: LatLng(38.72462615541611, 35.48455157385523),
          infoWindow: InfoWindow(
            title: 'Selçuklu Uygarlığı Müzesi',
            snippet: 'Kocasinan/Kayseri',
          ),
        ),
      );
      markers.add(
        Marker(
          markerId: MarkerId('museum_marker'),
          position: LatLng(38.72445875070668, 35.484058047292656),
          infoWindow: InfoWindow(
            title: 'Şifahiye ve Gıyasiye Medresesi',
            snippet: 'Kocasinan/Kayseri',
          ),
        ),
      );
      markers.add(
        Marker(
          markerId: MarkerId('museum_marker'),
          position: LatLng(38.724894002124174, 35.484272624421465),
          infoWindow: InfoWindow(
            title: 'Türk Evi',
            snippet: 'Kocasinan/Kayseri',
          ),
        ),
      );
    }
    //---OKUL---
    else if (district == 'Kocasinan' && cardNumber == 8) {
      markers.add(
        Marker(
          markerId: MarkerId('school_marker'),
          position: LatLng(38.74290886493254, 35.51417758895469),
          infoWindow: InfoWindow(
            title: 'Mesleki ve Teknik Anadolu Lisesi',
            snippet:
                'School Address: Argıncık Mesleki ve Teknik Anadolu Lisesi',
          ),
        ),
      );
      markers.add(
        Marker(
          markerId: MarkerId('school_marker'),
          position: LatLng(38.738208211824656, 35.48092229447735),
          infoWindow: InfoWindow(
            title: 'Mesleki ve Teknik Anadolu Lisesi',
            snippet: 'School Address: Atatürk Mesleki ve Teknik Anadolu Lisesi',
          ),
        ),
      );
      markers.add(
        Marker(
          markerId: MarkerId('school_marker'),
          position: LatLng(38.748094, 35.465131),
          infoWindow: InfoWindow(
            title: 'Mesleki ve Teknik Anadolu Lisesi',
            snippet:
                'School Address: Kocasinan Mustafa Kemal Atatürk Mesleki ve Teknik Anadolu Lisesi',
          ),
        ),
      );
      markers.add(
        Marker(
          markerId: MarkerId('school_marker'),
          position: LatLng(38.738208211824656, 35.48092229447735),
          infoWindow: InfoWindow(
            title: 'Mesleki Eğitim Merkezi',
            snippet: 'School Address: Ayşe Baldöktü Mesleki Eğitim Merkezi',
          ),
        ),
      );
      markers.add(
        Marker(
          markerId: MarkerId('school_marker'),
          position: LatLng(38.748744, 35.488509),
          infoWindow: InfoWindow(
            title: 'Anaokul',
            snippet: 'School Address: Barbaros Anaokulu',
          ),
        ),
      );
      markers.add(
        Marker(
          markerId: MarkerId('school_marker'),
          position: LatLng(38.776518, 35.480827),
          infoWindow: InfoWindow(
            title: 'OrtaOkul',
            snippet: 'School Address: Boztepe Şehit Furkan Hamamcı Ortaokulu',
          ),
        ),
      );
      markers.add(
        Marker(
          markerId: MarkerId('school_marker'),
          position: LatLng(38.800201, 35.538247),
          infoWindow: InfoWindow(
            title: 'İlkokul',
            snippet: 'School Address: Buğdaylı Şehit Ömer Delibaş İlkokulu ',
          ),
        ),
      );
      markers.add(
        Marker(
          markerId: MarkerId('school_marker'),
          position: LatLng(38.800310, 35.537770),
          infoWindow: InfoWindow(
            title: 'Ortaokul',
            snippet: 'School Address: Buğdaylı Ortaokulu',
          ),
        ),
      );
      markers.add(
        Marker(
          markerId: MarkerId('school_marker'),
          position: LatLng(38.809578, 35.449925),
          infoWindow: InfoWindow(
            title: 'Anadolu Lisesi',
            snippet: 'School Address: Cemal Bozkurt Anadolu Lisesi',
          ),
        ),
      );

      markers.add(
        Marker(
          markerId: MarkerId('school_marker'),
          position: LatLng(38.73725187182917, 35.47352326741802),
          infoWindow: InfoWindow(
            title: 'Abdullah Gül Üniversitesi',
            snippet: 'Kocasinan/Kayseri',
          ),
        ),
      );
    }
//-----AVM----

    //-----RESTAURANT------
    else if (district == 'Kocasinan' && cardNumber == 1) {
      markers.add(
        Marker(
          markerId: MarkerId('restaurant_marker'),
          position: LatLng(38.739704, 35.472626),
          infoWindow: InfoWindow(
            title: 'İstasyon Ekpress Restaurant',
            snippet: 'Restaurant',
          ),
        ),
      );
      markers.add(
        Marker(
          markerId: MarkerId('restaurant_marker'),
          position: LatLng(38.72364, 35.48518),
          infoWindow: InfoWindow(
            title: 'SUZ RESTORANT',
            snippet: 'Restaurant ',
          ),
        ),
      );
      markers.add(
        Marker(
          markerId: MarkerId('restaurant _marker'),
          position: LatLng(38.73696, 35.52338),
          infoWindow: InfoWindow(
            title: 'POZANTI ET MANGAL',
            snippet: 'Restaurant ',
          ),
        ),
      );
      markers.add(
        Marker(
          markerId: MarkerId('restaurant _marker'),
          position: LatLng(38.72712, 35.48544),
          infoWindow: InfoWindow(
            title: 'ŞEHİR RESTORNAT',
            snippet: 'Restaurant ',
          ),
        ),
      );
      markers.add(
        Marker(
          markerId: MarkerId('restaurant _marker'),
          position: LatLng(38.76002, 35.56006),
          infoWindow: InfoWindow(
            title: 'Yıldız RESTORANT',
            snippet: 'Restaurant ',
          ),
        ),
      );
      markers.add(
        Marker(
          markerId: MarkerId('restaurant _marker'),
          position: LatLng(38.77802, 35.57747),
          infoWindow: InfoWindow(
            title: 'MEHMET USTA OCAKBAŞI',
            snippet: 'Restaurant ',
          ),
        ),
      );
      markers.add(
        Marker(
          markerId: MarkerId('restaurant _marker'),
          position: LatLng(38.73379, 35.51814),
          infoWindow: InfoWindow(
            title: 'CİĞERCİ BAHRİ',
            snippet: 'Restaurant ',
          ),
        ),
      );
    }
    //----KALE----
    else if (district == 'Kocasinan' && cardNumber == 3) {
      markers.add(
        Marker(
          markerId: MarkerId('castle_marker'),
          position: LatLng(38.721316, 35.488873),
          infoWindow: InfoWindow(
            title: 'Kayseri Kalesi',
            snippet: 'Yıkılmayan Kale',
          ),
        ),
      );
    }
    //-----CAMİ
    else if (district == 'Kocasinan' && cardNumber == 6) {
      markers.add(
        Marker(
          markerId: MarkerId('mosque_marker'),
          position: LatLng(38.75326, 35.46887),
          infoWindow: InfoWindow(
            title: 'Mithatpaşa Merkez Camii',
            snippet: 'Camii',
          ),
        ),
      );

      markers.add(
        Marker(
          markerId: MarkerId('mosque_marker'),
          position: LatLng(38.73293, 35.47116),
          infoWindow: InfoWindow(
            title: 'Barbaros Camii',
            snippet: 'Camii',
          ),
        ),
      );

      markers.add(
        Marker(
          markerId: MarkerId('mosque_marker'),
          position: LatLng(38.73708, 35.45649),
          infoWindow: InfoWindow(
            title: 'Yavuz Merkez Camii',
            snippet: 'Camii',
          ),
        ),
      );

      markers.add(
        Marker(
          markerId: MarkerId('mosque_marker'),
          position: LatLng(38.73644, 35.46268),
          infoWindow: InfoWindow(
            title: 'Yavuz Sultan Selim Camii',
            snippet: 'Camii',
          ),
        ),
      );

      markers.add(
        Marker(
          markerId: MarkerId('mosque_marker'),
          position: LatLng(38.73130, 35.46308),
          infoWindow: InfoWindow(
            title: 'Gazi Osman Paşa Camii',
            snippet: 'Camii',
          ),
        ),
      );
    }
    //---library---
    else if (district == 'Talas' && cardNumber == 9) {
      markers.add(
        Marker(
          markerId: MarkerId('museum_marker'),
          position: LatLng(38.719001142104666, 35.55299871336463),
          infoWindow: InfoWindow(
            title: 'Kayseri Üniversitesi Mehmet Akif Ersoy Kütüphanesi',
            snippet: 'Talas/Kayseri',
          ),
        ),
      );
      markers.add(
        Marker(
          markerId: MarkerId('museum_marker'),
          position: LatLng(38.704361333277305, 35.55368436220674),
          infoWindow: InfoWindow(
            title: 'Mevlana Kütüphanesi',
            snippet: 'Talas/Kayseri',
          ),
        ),
      );
      markers.add(
        Marker(
          markerId: MarkerId('museum_marker'),
          position: LatLng(38.6969521612973, 35.54048813633124),
          infoWindow: InfoWindow(
            title: 'Talas Belediyesi Kültür Merkezi ve 7/24 Kütüphane',
            snippet: 'Talas/Kayseri',
          ),
        ),
      );
      markers.add(
        Marker(
          markerId: MarkerId('museum_marker'),
          position: LatLng(38.70846979329106, 35.527452389554),
          infoWindow: InfoWindow(
            title:
                'Erciyes Üniversitesi Kadir Has Merkez Kütüphanesi (Kütüphane ve Dökümantasyon Daire Başkanlığı)',
            snippet: 'Talas/Kayseri',
          ),
        ),
      );
    }

    //------MUSEUM----
    else if (district == 'Talas' && cardNumber == 9) {
      markers.add(
        Marker(
          markerId: MarkerId('museum_marker'),
          position: LatLng(
            38 + 41 / 60 + 18 / 3600,
            35 + 33 / 60 + 29 / 3600,
          ),
          infoWindow: InfoWindow(
            title: 'Osmanlı Sokagi',
            snippet: 'Peoples favorite place here',
          ),
        ),
      );
      markers.add(
        Marker(
          markerId: MarkerId('museum_marker'),
          position: LatLng(38.688583014125534, 35.56468166706669),
          infoWindow: InfoWindow(
            title: 'Yaman Dede Camii(Kilise)',
            snippet: 'Talas/Kayseri',
          ),
        ),
      );
      markers.add(
        Marker(
          markerId: MarkerId('museum_marker'),
          position: LatLng(38.68282139671554, 35.56412764828337),
          infoWindow: InfoWindow(
            title: 'Anyon Kilisesi',
            snippet: 'Talas/Kayseri',
          ),
        ),
      );
    }
    //----CAFE----
    else if (district == 'Talas' && cardNumber == 5) {
      markers.add(
        Marker(
          markerId: MarkerId('cafe_marker'),
          position: LatLng(38.696741, 35.540413),
          infoWindow: InfoWindow(
            title: 'LafLafa Cafe',
            snippet: 'The Turkish coffee place you are looking for!',
          ),
        ),
      );
      markers.add(
        Marker(
          markerId: MarkerId('cafe_marker'),
          position: LatLng(38.68995965362979, 35.54509113234388),
          infoWindow: InfoWindow(
            title: 'Coffee Shop',
            snippet: 'Cafe Address: Boston Drink & Dessert',
          ),
        ),
      );
      markers.add(
        Marker(
          markerId: MarkerId('cafe_marker'),
          position: LatLng(38.69186125916187, 35.54472039077272),
          infoWindow: InfoWindow(
            title: 'Coffee Shop',
            snippet: 'Cafe Address: Cadı’nın Evi Talas',
          ),
        ),
      );
      markers.add(
        Marker(
          markerId: MarkerId('cafe_marker'),
          position: LatLng(38.68656760375154, 35.5468002208685),
          infoWindow: InfoWindow(
            title: 'Coffee Shop',
            snippet: 'Cafe Address: Bonavias Talas',
          ),
        ),
      );

      markers.add(
        Marker(
          markerId: MarkerId('cafe_marker'),
          position: LatLng(38.67986524289732, 35.56979676894621),
          infoWindow: InfoWindow(
            title: 'Coffee Shop',
            snippet: 'Cafe Address: Çardak Cafe',
          ),
        ),
      );
      markers.add(
        Marker(
          markerId: MarkerId('cafe_marker'),
          position: LatLng(38.67599199379285, 35.560168672235385),
          infoWindow: InfoWindow(
            title: 'Coffee Shop',
            snippet: 'Cafe Address: Sinan Chef',
          ),
        ),
      );
      markers.add(
        Marker(
          markerId: MarkerId('cafe_marker'),
          position: LatLng(38.69037269520761, 35.56332614802577),
          infoWindow: InfoWindow(
            title: 'Coffee Shop',
            snippet: 'Cafe Address: Yebs Café',
          ),
        ),
      );

      markers.add(
        const Marker(
          markerId: MarkerId('cafe_marker'),
          position: LatLng(38.69658115806792, 35.561206576682295),
          infoWindow: InfoWindow(
            title: 'Coffee Shop',
            snippet: 'Cafe Address: Café Joy',
          ),
        ),
      );
      markers.add(
        Marker(
          markerId: MarkerId('cafe_marker'),
          position: LatLng(38.69704906059257, 35.56601271964178),
          infoWindow: InfoWindow(
            title: 'Coffee Shop',
            snippet: 'Cafe Address: Lina café',
          ),
        ),
      );
      markers.add(
        Marker(
          markerId: MarkerId('cafe_marker'),
          position: LatLng(38.68819365835598, 35.552501155111436),
          infoWindow: InfoWindow(
            title: 'Coffee Shop',
            snippet: 'Cafe Address: Dorato Coffee & Studio',
          ),
        ),
      );

      markers.add(
        Marker(
          markerId: MarkerId('cafe_marker'),
          position: LatLng(38.710194778567, 35.55414236964239),
          infoWindow: InfoWindow(
            title: 'Coffee Shop',
            snippet: 'Cafe Address: Big Wont Café',
          ),
        ),
      );
    }
//----CAMİ----
    else if (district == 'Talas' && cardNumber == 6) {
      markers.add(
        Marker(
          markerId: MarkerId('mosque_marker'),
          position: LatLng(38.69854, 35.55711),
          infoWindow: InfoWindow(
            title: 'Mevlana Camii',
            snippet: 'Camii',
          ),
        ),
      );

      markers.add(
        Marker(
          markerId: MarkerId('mosque_marker'),
          position: LatLng(38.68233, 35.56679),
          infoWindow: InfoWindow(
            title: 'Çağlayan Fatih Camii',
            snippet: 'Camii',
          ),
        ),
      );

      markers.add(
        Marker(
          markerId: MarkerId('mosque_marker'),
          position: LatLng(38.68788, 35.56616),
          infoWindow: InfoWindow(
            title: 'Tarihi Talas Camii',
            snippet: 'Camii',
          ),
        ),
      );
      markers.add(
        Marker(
          markerId: MarkerId('mosque_marker'),
          position: LatLng(38.68409, 35.56306),
          infoWindow: InfoWindow(
            title: 'Han Camii',
            snippet: 'Camii',
          ),
        ),
      );

      markers.add(
        Marker(
          markerId: MarkerId('mosque_marker'),
          position: LatLng(38.70255, 35.56681),
          infoWindow: InfoWindow(
            title: 'İzzet Bayraktar Camii',
            snippet: 'Camii',
          ),
        ),
      );
    }
    //----RESTAURANT----
    else if (district == 'Talas' && cardNumber == 1) {
      markers.add(
        Marker(
          markerId: MarkerId('restaurant _marker'),
          position: LatLng(38.70656, 35.55210),
          infoWindow: InfoWindow(
            title: 'GUBATE RESTAURANT',
            snippet: 'Restaurant ',
          ),
        ),
      );
      markers.add(
        Marker(
          markerId: MarkerId('restaurant _marker'),
          position: LatLng(38.70510, 35.55277),
          infoWindow: InfoWindow(
            title: 'GÜRAY KEBAP & IZGARA',
            snippet: 'Restaurant ',
          ),
        ),
      );
      markers.add(
        Marker(
          markerId: MarkerId('restaurant _marker'),
          position: LatLng(38.71174, 35.55183),
          infoWindow: InfoWindow(
            title: 'QUMES',
            snippet: 'Restaurant ',
          ),
        ),
      );
      markers.add(
        Marker(
          markerId: MarkerId('restaurant _marker'),
          position: LatLng(38.70062, 35.56200),
          infoWindow: InfoWindow(
            title: 'SETENAY RESTAURANT',
            snippet: 'Restaurant ',
          ),
        ),
      );

      markers.add(
        Marker(
          markerId: MarkerId('restaurant _marker'),
          position: LatLng(38.68885, 35.55840),
          infoWindow: InfoWindow(
            title: 'BEBEK LAUNGE',
            snippet: 'Restaurant ',
          ),
        ),
      );
      markers.add(
        Marker(
          markerId: MarkerId('restaurant _marker'),
          position: LatLng(38.69886, 35.56126),
          infoWindow: InfoWindow(
            title: 'TALAS OCAKBAŞI',
            snippet: 'Restaurant ',
          ),
        ),
      );
    }
    //----OKUL----
    else if (district == 'Talas' && cardNumber == 8) {
      markers.add(
        Marker(
          markerId: MarkerId('school_marker'),
          position: LatLng(38.600294, 35.819732),
          infoWindow: InfoWindow(
            title: 'İlkokul',
            snippet: 'School Address: Şehit Yüksek Turgut İlkokulu',
          ),
        ),
      );
      markers.add(
        Marker(
          markerId: MarkerId('school_marker'),
          position: LatLng(38.698404, 35.552345),
          infoWindow: InfoWindow(
            title: 'İlkokul',
            snippet: 'School Address: Bilge Kağan İlkokulu',
          ),
        ),
      );
      markers.add(
        Marker(
          markerId: MarkerId('school_marker'),
          position: LatLng(38.631538, 35.540822),
          infoWindow: InfoWindow(
            title: 'İlkokul',
            snippet: 'School Address: Kani Arıkan İlkokulu',
          ),
        ),
      );
      markers.add(
        Marker(
          markerId: MarkerId('school_marker'),
          position: LatLng(38.603506, 35.688408),
          infoWindow: InfoWindow(
            title: 'İlkokul',
            snippet: 'School Address: Kepez İlkokulu',
          ),
        ),
      );
      markers.add(
        Marker(
          markerId: MarkerId('school_marker'),
          position: LatLng(38.656496, 35.584489),
          infoWindow: InfoWindow(
            title: 'İlkokul',
            snippet: 'School Address: Reşadiye Yurttaşlar İlkokulu',
          ),
        ),
      );
      markers.add(
        Marker(
          markerId: MarkerId('school_marker'),
          position: LatLng(38.700521, 35.567576),
          infoWindow: InfoWindow(
            title: 'İlkokul',
            snippet: 'School Address: Mehmet Zeynep Akköse İlkokulu',
          ),
        ),
      );
      markers.add(
        Marker(
          markerId: MarkerId('school_marker'),
          position: LatLng(38.693330, 35.543783),
          infoWindow: InfoWindow(
            title: 'İlkokul',
            snippet: 'School Address: Şehit Binbaşı Mahmut Şahin İlkokulu',
          ),
        ),
      );
      markers.add(
        Marker(
          markerId: MarkerId('school_marker'),
          position: LatLng(38.711000, 35.551720),
          infoWindow: InfoWindow(
            title: 'İlkokul',
            snippet: 'School Address: Yüksek Mimar Selçuk Karakimseli İlkokulu',
          ),
        ),
      );
      markers.add(
        Marker(
          markerId: MarkerId('school_marker'),
          position: LatLng(38.574490, 35.673173),
          infoWindow: InfoWindow(
            title: 'İlkokul',
            snippet: 'School Address: Yazyurdu İlkokulu',
          ),
        ),
      );
      markers.add(
        Marker(
          markerId: MarkerId('school_marker'),
          position: LatLng(38.689545, 35.561309),
          infoWindow: InfoWindow(
            title: 'İlkokul',
            snippet: 'School Address: Osman Hilmi Kalpaklıoğlu İlkokulu',
          ),
        ),
      );
      markers.add(
        Marker(
          markerId: MarkerId('school_marker'),
          position: LatLng(38.638975, 35.767981),
          infoWindow: InfoWindow(
            title: 'İlkokul',
            snippet: 'School Address: Kamber İlkokulu',
          ),
        ),
      );
      markers.add(
        Marker(
          markerId: MarkerId('school_marker'),
          position: LatLng(38.687249, 35.688921),
          infoWindow: InfoWindow(
            title: 'İlkokul',
            snippet:
                'School Address: Kuruköprü Şehit Muzaffer Tufaner İlkokulu',
          ),
        ),
      );
    }
    //---Library
    else if (district == 'Melikgazi' && cardNumber == 9) {
      markers.add(
        Marker(
          markerId: MarkerId('museum_marker'),
          position: LatLng(38.72052462673379, 35.48951522794655),
          infoWindow: InfoWindow(
            title: 'Kayseri Şehir Kütüphanesi',
            snippet: 'Melikgazi/Kayseri',
          ),
        ),
      );
      markers.add(
        Marker(
          markerId: MarkerId('museum_marker'),
          position: LatLng(38.72068411177761, 35.486081857241174),
          infoWindow: InfoWindow(
            title: 'Raşit Efendi Yazma Eser Kütüphanesi',
            snippet: 'Melikgazi/Kayseri',
          ),
        ),
      );
      markers.add(
        Marker(
          markerId: MarkerId('museum_marker'),
          position: LatLng(38.71712887058232, 35.49869048551387),
          infoWindow: InfoWindow(
            title: 'Kayseri 75. Yıl İl Halk Kütüphanesi',
            snippet: 'Melikgazi/Kayseri',
          ),
        ),
      );
      markers.add(
        Marker(
          markerId: MarkerId('museum_marker'),
          position: LatLng(38.7202002613925, 35.48696564080944),
          infoWindow: InfoWindow(
            title: 'Kayseri Kütüphaneler',
            snippet: 'Melikgazi/Kayseri',
          ),
        ),
      );
    }

    //----MÜZE---
    else if (district == 'Melikgazi' && cardNumber == 9) {
      markers.add(
        Marker(
          markerId: MarkerId('museum_marker'),
          position: LatLng(38.71592862098673, 35.49491392630846),
          infoWindow: InfoWindow(
            title: 'Ahi Evran Esnaf ve Sanatkarlar Muzesi',
            snippet: 'Melikgazi/Kayseri',
          ),
        ),
      );
      markers.add(
        Marker(
          markerId: MarkerId('museum_marker'),
          position: LatLng(38.71803011295822, 35.488928975556775),
          infoWindow: InfoWindow(
            title: 'Milli Mücadele Müzesi',
            snippet: 'Melikgazi/Kayseri',
          ),
        ),
      );
      markers.add(
        Marker(
          markerId: MarkerId('museum_marker'),
          position: LatLng(38.72193827559742, 35.48832635042933),
          infoWindow: InfoWindow(
            title: 'Kayseri Arkeoloji Müzesi',
            snippet: 'Melikgazi/Kayseri',
          ),
        ),
      );
      markers.add(
        Marker(
          markerId: MarkerId('museum_marker'),
          position: LatLng(38.72152543178041, 35.489091432017254),
          infoWindow: InfoWindow(
            title: 'Kale İçi Kültür Sanat Merkezi',
            snippet: 'Melikgazi/Kayseri',
          ),
        ),
      );
      markers.add(
        Marker(
          markerId: MarkerId('museum_marker'),
          position: LatLng(38.71872364914889, 35.49111398223885),
          infoWindow: InfoWindow(
            title: 'Güpgüpoğlu Konağı & Etnografya Müzesi',
            snippet: 'Melikgazi/Kayseri',
          ),
        ),
      );
      markers.add(
        Marker(
          markerId: MarkerId('museum_marker'),
          position: LatLng(38.705346925037745, 35.5238403067889),
          infoWindow: InfoWindow(
            title: 'Erciyes Üniversitesi Tıp Fakültesi Gevher Nesibe Hastanesi',
            snippet: 'Köşk Mah. Prof. Dr. Turhan Feyzioğlu Cad. No:42',
          ),
        ),
      );
    }

    //---hastane
    else if (district == 'Melikgazi' && cardNumber == 2) {
      markers.add(
        Marker(
          markerId: MarkerId('hospital_marker'),
          position: LatLng(38.71445979314119, 35.49582302384695),
          infoWindow: InfoWindow(
            title: 'Hüma Hastanesi',
            snippet:
                'Tacettin Veli, Mahallesi, Seyyid Burhanettin Blv. No:58, 38150',
          ),
        ),
      );
      markers.add(
        Marker(
          markerId: MarkerId('hospital_marker'),
          position: LatLng(38.72919196775141, 35.480802652478104),
          infoWindow: InfoWindow(
            title: 'Memorial Kayseri Hastanesi',
            snippet: 'Melikgazi/Kayseri',
          ),
        ),
      );
      markers.add(
        Marker(
          markerId: MarkerId('hospital_marker'),
          position: LatLng(38.727116254145685, 35.48080265330249),
          infoWindow: InfoWindow(
            title: 'System Hospital / Hastanesi',
            snippet:
                'Gevher Nesibe Mahallesi Gök Geçidi No: 15 Kocasinan, 38070 Melikgazi',
          ),
        ),
      );
      markers.add(
        Marker(
          markerId: MarkerId('hospital_marker'),
          position: LatLng(38.724370863031794, 35.48045933057302),
          infoWindow: InfoWindow(
            title: 'Kayseri Dünyam Hastanesi',
            snippet:
                'Hacı Saki, Hastane Caddesi Kenarcık Sok No:10, 38010 Kocasinan/Kayseri',
          ),
        ),
      );
      markers.add(
        Marker(
          markerId: MarkerId('hospital_marker'),
          position: LatLng(38.72430390095509, 35.48217594422041),
          infoWindow: InfoWindow(
            title: 'Kayseri Özel Tekden Hastanesi',
            snippet: 'Gevhernesibe, Gür Sk. No:4, 38000 Kocasinan/Kayseri',
          ),
        ),
      );
    }

//-----OKUL---
    else if (district == 'Melikgazi' && cardNumber == 5) {
      markers.add(
        Marker(
          markerId: MarkerId('school_marker'),
          position: LatLng(38.799984, 35.661136),
          infoWindow: InfoWindow(
            title: 'Mesleki ve Teknik Anadolu Lisesi',
            snippet:
                'School Address: Ahmet Baldöktü Mesleki ve Teknik Anadolu Lisesi',
          ),
        ),
      );
      markers.add(
        Marker(
          markerId: MarkerId('school_marker'),
          position: LatLng(38.685749, 35.476056),
          infoWindow: InfoWindow(
            title: 'Anaokul',
            snippet: 'School Address: Ahmet Hilmi Anaokulu',
          ),
        ),
      );
      markers.add(
        Marker(
          markerId: MarkerId('school_marker'),
          position: LatLng(38.679298, 35.476240),
          infoWindow: InfoWindow(
            title: 'Anaokul',
            snippet: 'School Address: Ali Şahin Anaokulu',
          ),
        ),
      );
      markers.add(
        Marker(
          markerId: MarkerId('school_marker'),
          position: LatLng(38.721343, 35.471450),
          infoWindow: InfoWindow(
            title: 'Anadolu Lisesi',
            snippet: 'School Address: Aydınlıkevler Anadolu Lisesi',
          ),
        ),
      );
      markers.add(
        Marker(
          markerId: MarkerId('school_marker'),
          position: LatLng(38.745642, 35.390876),
          infoWindow: InfoWindow(
            title: 'Anadolu Lisesi',
            snippet: 'School Address: Belsin Çok Programlı Anadolu Lisesi',
          ),
        ),
      );
      markers.add(
        Marker(
          markerId: MarkerId('school_marker'),
          position: LatLng(38.719673, 35.474261),
          infoWindow: InfoWindow(
            title: 'İlkokul',
            snippet: 'School Address: Birlik Mesutcan İlkokulu',
          ),
        ),
      );
      markers.add(
        Marker(
          markerId: MarkerId('school_marker'),
          position: LatLng(38.770358, 35.578310),
          infoWindow: InfoWindow(
            title: 'Anadolu Lisesi',
            snippet: 'School Address: Demir Karamancı Anadolu Lisesi',
          ),
        ),
      );
      markers.add(
        Marker(
          markerId: MarkerId('school_marker'),
          position: LatLng(38.707263, 35.494259),
          infoWindow: InfoWindow(
            title: 'İlkokul',
            snippet: 'School Address: Emin Akçakaya İlkokulu',
          ),
        ),
      );
      markers.add(
        Marker(
          markerId: MarkerId('school_marker'),
          position: LatLng(38.783422, 35.623848),
          infoWindow: InfoWindow(
            title: 'Anaokul',
            snippet: 'School Address: Ferruha Büyükgöncü Anaokulu',
          ),
        ),
      );
      markers.add(
        Marker(
          markerId: MarkerId('school_marker'),
          position: LatLng(38.744242, 35.555124),
          infoWindow: InfoWindow(
            title: 'Anaokul',
            snippet: 'School Address: İldem Şehit Abuzer Doğan Anaokulu',
          ),
        ),
      );
      markers.add(
        Marker(
          markerId: MarkerId('school_marker'),
          position: LatLng(38.714898, 35.491875),
          infoWindow: InfoWindow(
            title: 'Anadolu Lisesi',
            snippet:
                'School Address: Şehit Nuh Kürşat Temizyürek Anadolu Lisesi',
          ),
        ),
      );
    }

    //----CAFE----
    else if (district == 'Melikgazi' && cardNumber == 5) {
      markers.add(
        Marker(
          markerId: MarkerId('cafe_marker'),
          position: LatLng(38.723944401517656, 35.483983426746924),
          infoWindow: InfoWindow(
            title: 'Coffee Shop',
            snippet: 'Cafe Address: Osmanlı Café',
          ),
        ),
      );
      markers.add(
        Marker(
          markerId: MarkerId('cafe_marker'),
          position: LatLng(38.723806342080536, 35.49190094778548),
          infoWindow: InfoWindow(
            title: 'Coffee Shop',
            snippet: 'Cafe Address: Heybe Café',
          ),
        ),
      );
      markers.add(
        Marker(
          markerId: MarkerId('cafe_marker'),
          position: LatLng(38.72219922222426, 35.47868302204121),
          infoWindow: InfoWindow(
            title: 'Coffee Shop',
            snippet: 'Cafe Address: Capris Café',
          ),
        ),
      );
      markers.add(
        Marker(
          markerId: MarkerId('cafe_marker'),
          position: LatLng(38.72219922222426, 35.48778107482622),
          infoWindow: InfoWindow(
            title: 'Coffee Shop',
            snippet: 'Cafe Address: Just Coffee Love',
          ),
        ),
      );

      markers.add(
        Marker(
          markerId: MarkerId('cafe_marker'),
          position: LatLng(38.7223186836937, 35.49001262760967),
          infoWindow: InfoWindow(
            title: 'Coffee Shop',
            snippet: 'Cafe Address: BM Teras Café ',
          ),
        ),
      );
      markers.add(
        Marker(
          markerId: MarkerId('cafe_marker'),
          position: LatLng(38.71964007475668, 35.49001262760967),
          infoWindow: InfoWindow(
            title: 'Coffee Shop',
            snippet: 'Cafe Address: Café De Mirel',
          ),
        ),
      );
      markers.add(
        Marker(
          markerId: MarkerId('cafe_marker'),
          position: LatLng(38.72715525023577, 35.52579533101541),
          infoWindow: InfoWindow(
            title: 'Coffee Shop',
            snippet: 'Cafe Address: Mado Mix',
          ),
        ),
      );

      markers.add(
        Marker(
          markerId: MarkerId('cafe_marker'),
          position: LatLng(38.73330873829677, 35.525725637881926),
          infoWindow: InfoWindow(
            title: 'Coffee Shop',
            snippet: 'Cafe Address: Sevgi Café ',
          ),
        ),
      );
      markers.add(
        Marker(
          markerId: MarkerId('cafe_marker'),
          position: LatLng(38.7225720725554, 35.48606437095424),
          infoWindow: InfoWindow(
            title: 'Coffee Shop',
            snippet: 'Cafe Address: Kahve Molası',
          ),
        ),
      );
      markers.add(
        Marker(
          markerId: MarkerId('cafe_marker'),
          position: LatLng(38.710499725782505, 35.51946554474843),
          infoWindow: InfoWindow(
            title: 'Coffee Shop',
            snippet: 'Cafe Address: Corner Café',
          ),
        ),
      );
    }
//----CAMİ---
    else if (district == 'Melikgazi' && cardNumber == 6) {
      markers.add(
        Marker(
          markerId: MarkerId('mosque_marker'),
          position: LatLng(38.73001, 35.53531),
          infoWindow: InfoWindow(
            title: 'Yıldırım Beyazıthan Camii',
            snippet: 'Camii',
          ),
        ),
      );

      markers.add(
        Marker(
          markerId: MarkerId('mosque_marker'),
          position: LatLng(38.72720, 35.52171),
          infoWindow: InfoWindow(
            title: 'Feride Ana Camii',
            snippet: 'Camii',
          ),
        ),
      );

      markers.add(
        Marker(
          markerId: MarkerId('mosque_marker'),
          position: LatLng(38.72323, 35.51945),
          infoWindow: InfoWindow(
            title: 'Safa Camii',
            snippet: 'Camii',
          ),
        ),
      );

      markers.add(
        Marker(
          markerId: MarkerId('mosque_marker'),
          position: LatLng(38.71852, 35.51449),
          infoWindow: InfoWindow(
            title: 'Köşk Dağı Camii',
            snippet: 'Camii',
          ),
        ),
      );

      markers.add(
        Marker(
          markerId: MarkerId('mosque_marker'),
          position: LatLng(38.72334, 35.50522),
          infoWindow: InfoWindow(
            title: 'Raşit Camii',
            snippet: 'Camii',
          ),
        ),
      );
    }
//------AVM----
    else if (district == 'Melikgazi' && cardNumber == 7) {
      markers.add(
        Marker(
          markerId: MarkerId('restaurant_marker'),
          position: LatLng(38.727074, 35.518368),
          infoWindow: InfoWindow(
            title: 'Kayseri Park AVM',
            snippet: 'Melikgazi/Kayseri',
          ),
        ),
      );
      markers.add(
        Marker(
          markerId: MarkerId('restaurant_marker'),
          position: LatLng(38.721425, 35.498339),
          infoWindow: InfoWindow(
            title: 'Kayseri Forum AVM',
            snippet: 'Melikgazi/Kayseri',
          ),
        ),
      );
    }
//----HASTANE
    else if (district == 'Melikgazi' && cardNumber == 2) {
      markers.add(
        Marker(
          markerId: MarkerId('hospital_marker'),
          position: LatLng(38.71377522084385, 35.49315787930207),
          infoWindow: InfoWindow(
            title: 'HÜMA Hastanesi',
            snippet: 'Özel Hastane',
          ),
        ),
      );
    }
//-----RESTAURANT----
    else if (district == 'Melikgazi' && cardNumber == 1) {
      markers.add(
        Marker(
          markerId: MarkerId('restaurant_marker'),
          position: LatLng(38.720410361932544, 35.490175696252464),
          infoWindow: InfoWindow(
            title: 'Elmacıoğlu İskender',
            snippet: 'Melikgazi/Kayseri',
          ),
        ),
      );
      markers.add(
        Marker(
          markerId: MarkerId('restaurant _marker'),
          position: LatLng(38.71760, 35.48606),
          infoWindow: InfoWindow(
            title: 'ALAMET-İ FARİKA RESTAURANT',
            snippet: 'Restaurant ',
          ),
        ),
      );
      markers.add(
        Marker(
          markerId: MarkerId('restaurant _marker'),
          position: LatLng(38.72653, 35.51765),
          infoWindow: InfoWindow(
            title: ' LAVANTES RESTORANT',
            snippet: 'Restaurant ',
          ),
        ),
      );

      markers.add(
        Marker(
          markerId: MarkerId('restaurant _marker'),
          position: LatLng(38.72245, 35.48302),
          infoWindow: InfoWindow(
            title: ' SULTAN SOFRASI',
            snippet: 'Restaurant ',
          ),
        ),
      );
      markers.add(
        Marker(
          markerId: MarkerId('restaurant _marker'),
          position: LatLng(38.72834, 35.48535),
          infoWindow: InfoWindow(
            title: ' GRAND ZARA RESTORANT',
            snippet: 'Restaurant ',
          ),
        ),
      );
      markers.add(
        Marker(
          markerId: MarkerId('restaurant _marker'),
          position: LatLng(38.72291, 35.48901),
          infoWindow: InfoWindow(
            title: 'KALE ROOF RESTAURANT',
            snippet: 'Restaurant ',
          ),
        ),
      );
      markers.add(
        Marker(
          markerId: MarkerId('restaurant _marker'),
          position: LatLng(38.72214, 35.49221),
          infoWindow: InfoWindow(
            title: 'ALTIN BAHÇE FASTFOOD',
            snippet: 'Restaurant ',
          ),
        ),
      );
    }
    return markers;
  }
}
