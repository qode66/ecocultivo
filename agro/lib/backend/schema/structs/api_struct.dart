// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ApiStruct extends BaseStruct {
  ApiStruct({
    String? type,
    String? projectId,
    String? privateKeyId,
    String? privateKey,
    String? clientEmail,
    String? clientId,
    String? authUri,
    String? tokenUri,
    String? authProviderX509CertUrl,
    String? clientX509CertUrl,
    String? universeDomain,
  })  : _type = type,
        _projectId = projectId,
        _privateKeyId = privateKeyId,
        _privateKey = privateKey,
        _clientEmail = clientEmail,
        _clientId = clientId,
        _authUri = authUri,
        _tokenUri = tokenUri,
        _authProviderX509CertUrl = authProviderX509CertUrl,
        _clientX509CertUrl = clientX509CertUrl,
        _universeDomain = universeDomain;

  // "type" field.
  String? _type;
  String get type => _type ?? 'service_account';
  set type(String? val) => _type = val;

  bool hasType() => _type != null;

  // "project_id" field.
  String? _projectId;
  String get projectId => _projectId ?? 'graficasagro';
  set projectId(String? val) => _projectId = val;

  bool hasProjectId() => _projectId != null;

  // "private_key_id" field.
  String? _privateKeyId;
  String get privateKeyId =>
      _privateKeyId ?? '3b0e2ba0b1aa03f7c71afd1f3e2e749f3ca42592';
  set privateKeyId(String? val) => _privateKeyId = val;

  bool hasPrivateKeyId() => _privateKeyId != null;

  // "private_key" field.
  String? _privateKey;
  String get privateKey =>
      _privateKey ??
      '-----BEGIN PRIVATE KEY-----\\nMIIEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQDEy1w5jZQdKYsN\\nDQaH+BMSqHKG8x5M59K+x2N4B/hW0K3ziuiv4c6V7S/IIg/JgBI0HYA4TfCdz6nA\\nv6wxMUVWAkt8M/nIjgyWh7YdB4VTsRaCKNftZTclxveI4WjMciilNs/I0jSBZ+bZ\\nbcFE6LcIiUbVA0MaFmERaYRWHSmR/miB7UOYxgq98FrU3QWAxD9Uw1xNZKkA+5om\\n7Lne6781uVLbs7cYQEnYpe8q8yWK0CXg7Pr8gGWvTF3MRN+T+EYF66kRdBuyiDXI\\nBHVJzAkAhMsuMDNFKprC+qTu68jOe+xC0rpE+mkSmnisgFXfqKjuFNXJuseI15eh\\nv7FK1zCzAgMBAAECggEATjCakQdunPOfmuzc9nMbaONitbmtBVNqiYCBRfSsuBmr\\ns8MyVod6ZFlcDcFy0lW/ZdN+2WAmRR14TewaB2WTLew1f8DK8uN1nu2G7xvI3orS\\n7Z46xMjdU3YtbcZZtDl7asFPZ3QVhoD42NTh4HYyGwMoEIR+ScQwhxGMkgZ+ONHQ\\n2lNoWS6pPmGniBwnyw5/h1Z1bLIgYEtm/9KK1AO6ZI1p934hYmt/mC5EbV568xIJ\\nqhhHEKCfPnIjPApJa5oWj8M7p2yAaWKr09P0xaMyjgtr10bz0gpp7GlG5lyB2ssQ\\nYib772mkAwVMwB+D5Yk/1r4IpQXMnwGA7SJvFiIf6QKBgQDmWECyYc3HkxCrqo2s\\nDtG89l1ZpQZ73uWVqxp5FU6UyY0Z17J9qrnyUwr3TdsiQ4ACRJ3Dn7pbcp6yOHLs\\nbcSyIvvLtnI4DStuGp3Y9wbOfelh/yt2pUJY83otKbLjTqNlsfGVeloaiXd7D3rO\\n5Zlb8wluvNDWPeM5tDio2VlsVwKBgQDatn8hMyAnbsK4xdsQgPoGR0FmixMfZQAw\\nW+m+ZeDwfj6pTRIis7jgC0E9popMvkXvzDpw4IcAlPhzd8QXwzG3ytAOVEBtrhUC\\nNWkfH9WOf1zp60g6fIMLCBvtx8O7xZ6+puh1GbHNcVx8q5lVGgAllhZKvEWz27YB\\nyBiEFlylBQKBgGN9zPv/eJVyNSogsa6WfAslUm7M877/KKT70aRpCpcDc1mtK+BR\\npJ1BNyRYUYU8KIdSQd5kGGc1W8xYy3LJesMCj0WPGUiSj6awAmvbTupTwkFcqNZH\\nTSAEkkn9j9HUfokHUfShc1ew9pWFuyKwUww/LlzRW1aeRo3/BNYRgyljAoGAb4VI\\ns5wHFDRE88RnXDX3xwXEUk4t1P9CJmZnfF8kYFxvBRK4YZt0dEEo5g+qS1FmBc0E\\nK5RBIknTmcUC5v7vtgCjL/tD0ulF6xdi36zyzrMgpGIFNVVR2GktHISUyIUO2bXv\\np+4PHGtmNmelSqB0XLX37emsPPaWCriFz6w7VyUCgYEAulnf0EcTB8F9eVITRpyN\\nOuPG7371b2rvs3dUuZOaXv/7RwgpyytVeTieqBG3b/pOnf5LTbX3iSvwCvItSbrQ\\ngGX26ETMiTviFFKiMcGEJcPvfV4pb1JNYD0eCw3ARfB11GA6TPaSjkKF9lzoK77u\\ndjM98cVmXU53Rt9R1fZCdb0=\\n-----END PRIVATE KEY-----\\n';
  set privateKey(String? val) => _privateKey = val;

  bool hasPrivateKey() => _privateKey != null;

  // "client_email" field.
  String? _clientEmail;
  String get clientEmail =>
      _clientEmail ?? 'api-google-lents@graficasagro.iam.gserviceaccount.co';
  set clientEmail(String? val) => _clientEmail = val;

  bool hasClientEmail() => _clientEmail != null;

  // "client_id" field.
  String? _clientId;
  String get clientId => _clientId ?? '114138748928618374834';
  set clientId(String? val) => _clientId = val;

  bool hasClientId() => _clientId != null;

  // "auth_uri" field.
  String? _authUri;
  String get authUri => _authUri ?? 'https://accounts.google.com/o/oauth2/auth';
  set authUri(String? val) => _authUri = val;

  bool hasAuthUri() => _authUri != null;

  // "token_uri" field.
  String? _tokenUri;
  String get tokenUri => _tokenUri ?? 'https://oauth2.googleapis.com/token';
  set tokenUri(String? val) => _tokenUri = val;

  bool hasTokenUri() => _tokenUri != null;

  // "auth_provider_x509_cert_url" field.
  String? _authProviderX509CertUrl;
  String get authProviderX509CertUrl =>
      _authProviderX509CertUrl ?? 'https://www.googleapis.com/oauth2/v1/certs';
  set authProviderX509CertUrl(String? val) => _authProviderX509CertUrl = val;

  bool hasAuthProviderX509CertUrl() => _authProviderX509CertUrl != null;

  // "client_x509_cert_url" field.
  String? _clientX509CertUrl;
  String get clientX509CertUrl =>
      _clientX509CertUrl ??
      'https://www.googleapis.com/robot/v1/metadata/x509/api-google-lents%40graficasagro.iam.gserviceaccount.com';
  set clientX509CertUrl(String? val) => _clientX509CertUrl = val;

  bool hasClientX509CertUrl() => _clientX509CertUrl != null;

  // "universe_domain" field.
  String? _universeDomain;
  String get universeDomain => _universeDomain ?? 'googleapis.com';
  set universeDomain(String? val) => _universeDomain = val;

  bool hasUniverseDomain() => _universeDomain != null;

  static ApiStruct fromMap(Map<String, dynamic> data) => ApiStruct(
        type: data['type'] as String?,
        projectId: data['project_id'] as String?,
        privateKeyId: data['private_key_id'] as String?,
        privateKey: data['private_key'] as String?,
        clientEmail: data['client_email'] as String?,
        clientId: data['client_id'] as String?,
        authUri: data['auth_uri'] as String?,
        tokenUri: data['token_uri'] as String?,
        authProviderX509CertUrl: data['auth_provider_x509_cert_url'] as String?,
        clientX509CertUrl: data['client_x509_cert_url'] as String?,
        universeDomain: data['universe_domain'] as String?,
      );

  static ApiStruct? maybeFromMap(dynamic data) =>
      data is Map ? ApiStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'type': _type,
        'project_id': _projectId,
        'private_key_id': _privateKeyId,
        'private_key': _privateKey,
        'client_email': _clientEmail,
        'client_id': _clientId,
        'auth_uri': _authUri,
        'token_uri': _tokenUri,
        'auth_provider_x509_cert_url': _authProviderX509CertUrl,
        'client_x509_cert_url': _clientX509CertUrl,
        'universe_domain': _universeDomain,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'type': serializeParam(
          _type,
          ParamType.String,
        ),
        'project_id': serializeParam(
          _projectId,
          ParamType.String,
        ),
        'private_key_id': serializeParam(
          _privateKeyId,
          ParamType.String,
        ),
        'private_key': serializeParam(
          _privateKey,
          ParamType.String,
        ),
        'client_email': serializeParam(
          _clientEmail,
          ParamType.String,
        ),
        'client_id': serializeParam(
          _clientId,
          ParamType.String,
        ),
        'auth_uri': serializeParam(
          _authUri,
          ParamType.String,
        ),
        'token_uri': serializeParam(
          _tokenUri,
          ParamType.String,
        ),
        'auth_provider_x509_cert_url': serializeParam(
          _authProviderX509CertUrl,
          ParamType.String,
        ),
        'client_x509_cert_url': serializeParam(
          _clientX509CertUrl,
          ParamType.String,
        ),
        'universe_domain': serializeParam(
          _universeDomain,
          ParamType.String,
        ),
      }.withoutNulls;

  static ApiStruct fromSerializableMap(Map<String, dynamic> data) => ApiStruct(
        type: deserializeParam(
          data['type'],
          ParamType.String,
          false,
        ),
        projectId: deserializeParam(
          data['project_id'],
          ParamType.String,
          false,
        ),
        privateKeyId: deserializeParam(
          data['private_key_id'],
          ParamType.String,
          false,
        ),
        privateKey: deserializeParam(
          data['private_key'],
          ParamType.String,
          false,
        ),
        clientEmail: deserializeParam(
          data['client_email'],
          ParamType.String,
          false,
        ),
        clientId: deserializeParam(
          data['client_id'],
          ParamType.String,
          false,
        ),
        authUri: deserializeParam(
          data['auth_uri'],
          ParamType.String,
          false,
        ),
        tokenUri: deserializeParam(
          data['token_uri'],
          ParamType.String,
          false,
        ),
        authProviderX509CertUrl: deserializeParam(
          data['auth_provider_x509_cert_url'],
          ParamType.String,
          false,
        ),
        clientX509CertUrl: deserializeParam(
          data['client_x509_cert_url'],
          ParamType.String,
          false,
        ),
        universeDomain: deserializeParam(
          data['universe_domain'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ApiStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ApiStruct &&
        type == other.type &&
        projectId == other.projectId &&
        privateKeyId == other.privateKeyId &&
        privateKey == other.privateKey &&
        clientEmail == other.clientEmail &&
        clientId == other.clientId &&
        authUri == other.authUri &&
        tokenUri == other.tokenUri &&
        authProviderX509CertUrl == other.authProviderX509CertUrl &&
        clientX509CertUrl == other.clientX509CertUrl &&
        universeDomain == other.universeDomain;
  }

  @override
  int get hashCode => const ListEquality().hash([
        type,
        projectId,
        privateKeyId,
        privateKey,
        clientEmail,
        clientId,
        authUri,
        tokenUri,
        authProviderX509CertUrl,
        clientX509CertUrl,
        universeDomain
      ]);
}

ApiStruct createApiStruct({
  String? type,
  String? projectId,
  String? privateKeyId,
  String? privateKey,
  String? clientEmail,
  String? clientId,
  String? authUri,
  String? tokenUri,
  String? authProviderX509CertUrl,
  String? clientX509CertUrl,
  String? universeDomain,
}) =>
    ApiStruct(
      type: type,
      projectId: projectId,
      privateKeyId: privateKeyId,
      privateKey: privateKey,
      clientEmail: clientEmail,
      clientId: clientId,
      authUri: authUri,
      tokenUri: tokenUri,
      authProviderX509CertUrl: authProviderX509CertUrl,
      clientX509CertUrl: clientX509CertUrl,
      universeDomain: universeDomain,
    );
