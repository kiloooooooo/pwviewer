const _HEADER = 'https://pawoo.net';

const _LOCAL_TIMELINE_URL_WITH_LIMIT =
    '$_HEADER/api/v1/timelines/public/?local=true&limit=';
const _HOME_TIMELINE_URL_WITH_LIMIT = '$_HEADER/api/v1/timelines/home?limit=';
const _STATUS_CONTEXT_URL_HEADER = '$_HEADER/api/v1/statuses/';
const _STATUS_CONTEXT_URL_TRAILER = '/context';
const _STATUS_URL = '$_HEADER/api/v1/statuses/';
const _ACCOUNT_URL = '$_HEADER/api/v1/accounts/';
const _ACCOUNT_VERIFICATION_URL = '$_ACCOUNT_URL/verify_credentials';

String getLocalTimelineUrl(int limit) {
  return _LOCAL_TIMELINE_URL_WITH_LIMIT + limit.toString();
}

String getHomeTimelineUrl(int limit) {
  return _HOME_TIMELINE_URL_WITH_LIMIT + limit.toString();
}

String getStatusContextUrl(String statusId) {
  return _STATUS_CONTEXT_URL_HEADER + statusId + _STATUS_CONTEXT_URL_TRAILER;
}

String getStatusUrl(String statusId) {
  return _STATUS_URL + statusId;
}

String getAccountUrl(String accountId) {
  return _ACCOUNT_URL + accountId;
}

String getAccountStatusesUrl(String accountId, {int limit = 20}) {
  return _ACCOUNT_URL + accountId + '/statuses/?limit=$limit';
}

String getAccountVerificationUrl() {
  return _ACCOUNT_VERIFICATION_URL;
}
