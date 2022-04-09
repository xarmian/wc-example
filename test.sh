curl 'http://localhost:3001/' \
  -H 'content-type: application/json' \
  -H 'user-agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36' \
  -H 'accept: */*' \
  -H 'accept-language: en-US,en;q=0.9' \
  --data-raw '{ "wcSession": "{\"connected\":true,\"accounts\":[\"QUCT2PQNESPFJZR56MY7UCKG6NTJKCT6MUBYDGSJG4ET3BVMK6JDVCOSSM\"],\"chainId\":4160,\"bridge\":\"https:\/\/i.bridge.walletconnect.org\",\"key\":\"0bb9d8bb8e00f2a5f2838b5e7d7abafa91c009b902ef43230cfbf1644c35cf9e\",\"clientId\":\"ddaec364-0233-4195-912f-9fbf778cfb9b\",\"clientMeta\":{\"description\":\"Web site created using create-react-app\",\"url\":\"http:\/\/localhost:3000\",\"icons\":[\"http:\/\/localhost:3000\/favicon.ico\",\"http:\/\/localhost:3000\/logo192.png\"],\"name\":\"React App\"},\"peerId\":\"aa3f832c-aa6e-4980-8852-67700843c66e\",\"peerMeta\":{\"description\":\"Pera Wallet: Simply the best Algorand wallet.\",\"url\":\"https:\/\/perawallet.app\/\",\"name\":\"Pera Wallet\",\"icons\":[\"https:\/\/algorand-app.s3.amazonaws.com\/app-icons\/Pera-walletconnect-128.png\",\"https:\/\/algorand-app.s3.amazonaws.com\/app-icons\/Pera-walletconnect-192.png\",\"https:\/\/algorand-app.s3.amazonaws.com\/app-icons\/Pera-walletconnect-512.png\"]},\"handshakeId\":1649544362140455,\"handshakeTopic\":\"4431b13d-9d5b-4ba0-91f2-9727a37805f5\"}" }' \
  --compressed

