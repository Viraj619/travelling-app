import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class ResourcePage {
  static final List<Map<String, dynamic>> gData = [
    {
      'city': 'Mapusa',
      'imagecty': "assert/image/ic_mapuca_city.jpg",
      'mplace': {
        'place': [
          'Aguada fort',
          'Anjuna',
          'Baga',
          'Calangute',
          'Candolim',
          'Chapora fort',
          'Sinquerim',
          'Vagator',
          'Siolim'
        ],
        'mimage': [
          'assert/image/ic_aguada fort_place.jpg',
          'assert/image/ic_anjuna_place.jpg',
          "assert/image/ic_baga_place.jpg",
          "assert/image/ic_calangute_place.jpg",
          "assert/image/ic_candolim_place.jpg",
          'assert/image/ic_chapora fort_place.jpg',
          'assert/image/ic_siqurim_place.jpg',
          'assert/image/ic_vagator_place.jpg',
          'assert/image/ic_siolim_place.jpg',
        ],
      }

      // // ]
    },
    //pajim
    {
      'city': 'Panjim',
      'imagecty': 'assert/image/ic_vasco_city.jpg',
      'mplace': {
        'place':[
          'Big Daddy Casino',
          'Boating Ride',
          'Church',
          'Deltin Casino',
          'Dona Paul',
          'Miramar Beach',
          'Cosino Pride'
      ],
        'mimage':[
          'ic_big daddy_panjim.jpg',
          'assert/image/ic_boat ride_panjim.jpg',
          "assert/image/ic_church_panjim.jpg",
          "assert/image/ic_deltin_panjim.jpg",
          "assert/image/ic_donapau_panji.jpg",
          'assert/image/ic_miramar_panjim.jpg',
          'assert/image/ic_pride_panjim.jpg',
        ]
      }
    },
    // oldgoa

    {
      'city': 'OldGoa',
      'imagecty': 'assert/image/ic_oldgoa_city.jpg',
      'mplace': {
        'place':[
        'St.Francis Xavier',
        'St.Francis of Assisi',
          'Museum',
          'Basilica de Bom Jesus',
          "St.Augustine Church",
          "Our Lady of Monte",

        ],
        'mimage':[
          'assert/image/ic_oldgoa_church.jpg',
          "assert/image/ic_church2_oldgoa.jpg",
          'assert/image/ic_church1_oldgoa.jpg',
          'assert/image/ic_church5_oldgoa.jpg',
          "assert/image/ic_church4_oldgoa.jpg",
          'assert/image/ic_church3_oldgoa.jpg'
        ]
      }
    },
    //ponda
    {
      'city': 'Ponda',
      'imagecty': 'assert/image/ic_ponda_cty.jpg',
      'mplace': {
        'place':[
          'Temple',
          'Caves',
          'Ponda Fort',
          'Ponda Lake',
          'Vaga Fort',
          'museum'

        ],
        'mimage':[
          "assert/image/ic_temple_ponda.jpg",
          'assert/image/ic_caves_ponda.jpg',
          'assert/image/ic_fort_ponda.jpg',
          "assert/image/ic_pond_ponda.jpg",
          'assert/image/ic_vagator_place.jpg',
          'assert/image/ic_museum_pod.jpg'
        ]
      }
    },

    //vasco
    {
      'city': 'Vasco',
      'imagecty': 'assert/image/ic_vasco_city.jpg',
      'mplace': {
        'place':[
          'Chapora fort',
          'Bambolim Beach',
          'Bina Beach',
          'Naval Aviation Museum',
          'Vasco Port',
          'Statue of Vasco da Gama',
        ],
        'mimage':[
          'assert/image/ic_chapora fort_place.jpg',
          'assert/image/ic_bambolim_vasco.jpg',
          'assert/image/ic_bina_vasco.jpg',
          'assert/image/ic_museum_vasco.jpg',
          'assert/image/ic_port_vasco.jpg',
          'assert/image/ic_vasco_vasco.jpg'
        ]
      }
    },

    //margoa
    {
      'city': 'Margoa',
      'imagecty': 'assert/image/ic_margoa_city.jpg',
      'mplace': {
        'place':[
          'Butterfly Beach',
          'Colva Beach',
          'Salaulim Dam',
          'DhudhSagarWaterFall',
          'Salaulim Garden',
          'Bina Beach',
        ],
        'mimage':[
          "assert/image/ic_buterfly_mat.jpg",
          'assert/image/ic_colva_margo.jpg',
          "assert/image/ic_dam_margo.jpg",
          'assert/image/ic_dhudhsagr_margo.jpg',
          'assert/image/ic_garden_margo.jpg',
          'assert/image/ic_bina_vasco.jpg',
        ]
      }
    },
  ];
}

class MCity {
  static final List<Map<String, dynamic>> hotelData = [
    /// mapuca hotels
    {
      'hotel':{
       'name':[
         'Casa Ahaana Hotel',
         'Heera Hotel',
         'Mandrin Hotel',
         'Beach view hotel',
         'Nature Hotel',
         'Raj Hotel',
         'Heera Hotel',
         'Mandrin Hotel',

       ],
        'mimage':[
          'assert/image/ic_casa ahaana_mhotel.jpg',
          'assert/image/ic_heera_mhotel.jpg',
          'assert/image/ic_mhotel.jpg',
          'assert/image/ic_mrooms.jpg',
          'assert/image/ic_nature_marhotel.jpg',
          'assert/image/ic_raj_marhotel.jpg',
          'assert/image/ic_casa ahaana_mhotel.jpg',
          'assert/image/ic_heera_mhotel.jpg',
        ],
        'price':[
          '5000',
          '2300',
          '7000',
         ' 5700',
          '6900',
          '1500',
          '16000',
          '20000'
        ]
    }

    },

    /// panjim hotels
    {
      'hotel':{
       'name':[
         'Ambika Hotel',
        ' Dorms Hotel',
         'Kismat Hotel',
         'Mandovi River Hotel',
         'Panjim Tourist Hotel',
         'Rajdhani Hotel',
         ' Dorms Hotel',
         'Kismat Hotel',
        ],
        'mimage':[
          'assert/image/ic_ambika_photel.jpg',
          'assert/image/ic_dorms_photel.jpg',
          'assert/image/ic_kismat_photel.jpg',
          'assert/image/ic_mandovi_photel.jpg',
          'assert/image/ic_panjim tourist_photel.jpg',
          'assert/image/ic_rajdhani_photel.jpg',
          'assert/image/ic_dorms_photel.jpg',
          'assert/image/ic_kismat_photel.jpg',
        ],
        'price':[
        '5000',
        '2300',
        '7000',
        ' 5700',
        '6900',
        '1500',
          '8000',
          '12000',
        ]
      }
    },

    /// old goa hotels
    {
      'hotel':{
        'name':[
          'Avasa Hotel',
          'Queeny Hotel',
          'River Wood Hotel',
          'White Pearl Hotel',
          'Mandrem Hotel',
          'Swarnam Hotel',
          'Avasa Hotel',
          'Queeny Hotel',
        ],
        'mimage':[
          "assert/image/ic_avasa_oghotel.jpg",
          'assert/image/ic_queeny_oghotel.jpg',
          'assert/image/ic_river wood_oghotel.jpg',
          'assert/image/ic_white pearl_lghotel.jpg',
          'assert/image/ic_mandrem_oghotel.jpg',
          'assert/image/ic_swarnam_oghotel.jpg',
          "assert/image/ic_avasa_oghotel.jpg",
          'assert/image/ic_queeny_oghotel.jpg',
        ],
        'price':[
          '5000',
          '2300',
          '7000',
          ' 5700',
          '6900',
          '1500',
          '2500',
          '1500'
        ]
    }
    },

    /// ponda
    {
      'hotel':{
        'name':[
          'Atish Hotel',
          'Menino Hotel',
          'Rocky Hotel',
          'Sunrace Hotel',
          'Ponda Goa Hotel',
          'Yeshoda Hotel',
          'Atish Hotel',
          'Menino Hotel',
        ],
        'mimage':[
          "assert/image/ic_atish_podhotel.jpg",
          'assert/image/ic_menino_podhotel.jpg',
          'assert/image/ic_rocky_podhotel.jpg',
          'assert/image/ic_sunrace_podhotel.jpg',
          'assert/image/ic_ponda goa_podhotel.jpg',
          'assert/image/ic_yashoda_ponhotel.jpg',
          "assert/image/ic_atish_podhotel.jpg",
          'assert/image/ic_menino_podhotel.jpg',
        ],
        'price':[
          '5000',
          '2300',
          '7000',
          ' 5700',
          '6900',
          '1500',
          '2000',
          '1000',
        ]
      }
    },

    /// vasco

    {
      'hotel':{
        'name':[
         'Maharaja Hotel',
          'Recedecy Hotel',
          'Suman Hotel',
          'Supreme Hotel',
          'Karma Plaza Hotel',
          'Ricone Hotel'
        ],
        'mimage':[
          "assert/image/ic_maharaja_vashotel.jpg",
          'assert/image/ic_recedency_vashotel.jpg',
          'assert/image/ic_sunman_vashotel.jpg',
          'assert/image/ic_supremehotel_vas.jpg',
          'assert/image/ic_karma plaza_vashotel.jpg',
          'assert/image/ic_ricone_vashotel.jpg'
        ],
        'price':[
          '5000',
          '2300',
          '7000',
          ' 5700',
          '6900',
          '1500'
        ]
    }
    },
      /// morgao
    {
      'hotel':{
        'name':[
          'Nature Hotel',
          'Raj Hotel',
          'Relax Hotel',
          'Sincro Hotel',
          'Viva Hotel',
          'WoodLand Hotel',
          'Relax Hotel',
          'Sincro Hotel',
        ],
        'mimage':[
          'assert/image/ic_nature_marhotel.jpg',
          'assert/image/ic_raj_marhotel.jpg',
          'assert/image/ic_relax_marhotel.jpg',
          'assert/image/ic_sincro_marhotel.jpg',
          'assert/image/ic_viva_marhotel.jpg',
          'assert/image/ic_woodland_marhotel.jpg',
          'assert/image/ic_relax_marhotel.jpg',
          'assert/image/ic_sincro_marhotel.jpg',
        ],
        'price':[
          '5000',
          '2300',
          '7000',
          ' 5700',
          '6900',
          '1500',
          '2000',
          '1000',
        ]
      }
    }

  ];
}

class Famous {
  static final List<Map<String, dynamic>> famData = [
    {'place': 'Aguada fort', 'mimage': 'assert/image/ic_aguada fort_place.jpg'},
    {'place': 'Siolim', 'mimage': 'assert/image/ic_siolim_place.jpg'},
    {
      'place': 'Anjuna',
      'mimage': 'assert/image/ic_anjuna_place.jpg',
    },
    {
      'place': 'Baga',
      'mimage': "assert/image/ic_baga_place.jpg",
    },
    {
      'place': 'Calangute',
      'mimage': "assert/image/ic_calangute_place.jpg",
    },
    {
      'place': 'Candolim',
      'mimage': "assert/image/ic_candolim_place.jpg",
    },
    {
      'place': 'Chapora fort',
      'mimage': 'assert/image/ic_chapora fort_place.jpg',
    },
    {'place': 'Sinquerim fort', 'mimage': 'assert/image/ic_siqurim_place.jpg'},
    {
      'place': 'Vagator',
      'mimage': 'assert/image/ic_vagator_place.jpg',
    },
    {
      'place': 'Dona Paul',
      'mimage': 'assert/image/ic_donapau_panji.jpg',
    },
    {'place': 'OldGoa', 'mimage': 'assert/image/ic_oldgoa_church.jpg'},
    {'place': 'Margoan', 'mimage': 'assert/image/ic_buterfly_mat.jpg'}
  ];
}

TextStyle mTextStyle25(
    {FontWeight mFontWeight = FontWeight.bold,
    Color mFontColor = Colors.black}) {
  return TextStyle(fontSize: 25, fontWeight: mFontWeight, color: mFontColor);
}

TextStyle mTextStyle20(
    {FontWeight mFontWeight = FontWeight.bold,
    Color mFontColor = Colors.black}) {
  return TextStyle(fontSize: 20, fontWeight: mFontWeight, color: mFontColor);
}

TextStyle mTextStyle16(
    {FontWeight mFontWeight = FontWeight.bold,
    Color mFontColor = Colors.black}) {
  return TextStyle(fontSize: 16, fontWeight: mFontWeight, color: mFontColor);
}

TextStyle mTextStyle13(
    {FontWeight mFontWeigh = FontWeight.bold,
    Color mFontColor = Colors.black}) {
  return TextStyle(fontSize: 13, fontWeight: mFontWeigh, color: mFontColor);
}

TextStyle mTextStyle15(
    {FontWeight mFontWeigh = FontWeight.bold,
    Color mFontColor = Colors.black}) {
  return TextStyle(fontSize: 15, fontWeight: mFontWeigh, color: mFontColor);
}

TextStyle mTextStyle30(
    {FontWeight mFontWeight = FontWeight.bold,
    Color mFontColor = Colors.black}) {
  return TextStyle(
    fontSize: 30,
    fontWeight: mFontWeight,
    color: mFontColor,
  );
}
