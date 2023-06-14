import 'package:build_pc_mobile/auth/utils/auth_credentials_storage.dart';
import 'package:build_pc_mobile/common/constants/api.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:mockito/mockito.dart';

// class MockAuthCredentialsStorage extends Mock implements AuthCredentialsStorage {}
//
// class MockHttpClient extends Mock implements http.Client {}
//
// class CreateBuildPc{
//   void test() {
//     group('createBuildPcUserListComponents', () {
//       late MockAuthCredentialsStorage mockAuthCredentialsStorage;
//       late MockHttpClient mockHttpClient;
//
//       setUp(() {
//         mockAuthCredentialsStorage = MockAuthCredentialsStorage();
//         mockHttpClient = MockHttpClient();
//       });
//
//       test('should process the build PC user response correctly', () async {
//         // Mock saved credentials
//         final tokenAccess = 'test_token';
//         final savedCredentials = AuthCredentials(tokenAccess: tokenAccess);
//         when(mockAuthCredentialsStorage.savedCredentials)
//             .thenAnswer((_) => Future.value(savedCredentials));
//
//         // Mock HTTP response
//         final response = http.Response('{"result": "success"}', 200);
//         when(mockHttpClient.post(any, headers: anyNamed('headers')))
//             .thenAnswer((_) async => response);
//
//         // Create the API instance with the mocked dependencies
//         final api = Api(authCredentialsStorage: mockAuthCredentialsStorage, client: mockHttpClient);
//
//         // Call the method to test
//         await api.createBuildPcUserListComponents();
//
//         // Verify that the correct API call is made
//         final headers = {'Authorization': 'Bearer $tokenAccess'};
//         final expectedUri = Uri.http(Api.baseUrl, '/fetch-build-pc-list-user');
//         verify(mockHttpClient.post(expectedUri, headers: headers));
//
//         // Add additional verifications or assertions based on the processing of the response
//       });
//     });
//   }
// }
