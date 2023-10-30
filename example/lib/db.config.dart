// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// ConfigGenerator
// **************************************************************************

// ignore_for_file:

import 'package:db_sql_query/db_sql_query.dart';

import 'package:example/dog_category.dart';

import 'package:example/models/invoice_item.dart';

import 'package:example/models/invoice.dart';

import 'package:example/models/customer.dart';

import 'package:example/models/album.dart';

import 'package:example/models/track.dart';

import 'package:example/models/playlist_track.dart';

import 'package:example/models/artist.dart';

import 'package:example/models/playlist.dart';

import 'package:example/models/media_type.dart';

import 'package:example/models/employee.dart';

import 'package:example/models/genres.dart';

import 'package:example/example.dart';

import 'package:example/dog.dart';

Future<void> $configSql() => ConfigSqflite.instance.configSqflite(
      'doggie_database.db',
      raws: [
        DogCategoryQuery.rawCreate,
        InvoiceItemQuery.rawCreate,
        InvoiceQuery.rawCreate,
        CustomerQuery.rawCreate,
        AlbumQuery.rawCreate,
        TrackQuery.rawCreate,
        PlaylistTrackQuery.rawCreate,
        ArtistQuery.rawCreate,
        PlaylistQuery.rawCreate,
        MediaTypeQuery.rawCreate,
        EmployeeQuery.rawCreate,
        GenresQuery.rawCreate,
        ExampleModelQuery.rawCreate,
        DogQuery.rawCreate
      ],
      version: 2,
    );
