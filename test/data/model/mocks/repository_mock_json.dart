import 'owner_mock_json.dart';

Map<String, dynamic> get repositoryMockJson => {
      'id': 101,
      'name': 'name',
      'owner': ownerJson,
      'private': false,
      'html_url': 'html_url',
      'description': 'description',
      'topics': [
        'topic1',
        'topic2',
      ]
    };
