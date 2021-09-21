class Configurations {
  final String signatureKey;
  final String apiBaseUrl;
  final int apiVersion;
  final String locale;

  const Configurations({required this.signatureKey, required this.apiBaseUrl,
      required this.apiVersion, required this.locale});
}

const debugConfigurations = Configurations(
    signatureKey: 'younetsi',
    apiBaseUrl: 'demo.younetsi.com',
    apiVersion: 15,
    locale: 'vn'
);

const releaseConfigurations = Configurations(
    signatureKey: 'younetsi',
    apiBaseUrl: 'demo.younetsi.com',
    apiVersion: 37,
    locale: 'vn'
);