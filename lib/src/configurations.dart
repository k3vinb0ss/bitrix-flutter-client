class MobileConfigurations {
  final String signatureKey;
  final String apiBaseUrl;
  final int apiVersion;
  final String locale;

  const MobileConfigurations({required this.signatureKey, required this.apiBaseUrl,
      required this.apiVersion, required this.locale});
}

const debugMobileConfigurations = MobileConfigurations(
    signatureKey: 'younetsi',
    apiBaseUrl: 'demo.younetsi.com',
    apiVersion: 15,
    locale: 'vn'
);

const releaseMobileConfigurations = MobileConfigurations(
    signatureKey: 'younetsi',
    apiBaseUrl: 'demo.younetsi.com',
    apiVersion: 37,
    locale: 'vn'
);

class ApiConfigurations {
  final String clientId;
  final String clientSecret;

  ApiConfigurations({required this.clientId, required this.clientSecret});
}
