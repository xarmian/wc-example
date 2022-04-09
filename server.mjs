import bodyParser from "body-parser";
import express from "express";
import WalletConnectClient from '@walletconnect/client';
import { ALGO_WalletConnect } from '@reach-sh/stdlib';
import {loadStdlib} from '@reach-sh/stdlib';

const app = express();
const stdlib = loadStdlib('ALGO');

app.use(bodyParser());

const onPost = async (request) => {
  const wcSession = JSON.parse(request.body.wcSession);
  const connector = new WalletConnectClient.default({bridge: 'https://bridge.walletconnect.org', session: wcSession});
  let acct = connector.accounts[0];

  console.log(`WalletConnect Account is: ${acct}`);

  const providerEnv = 'TestNet';
  stdlib.setWalletFallback(stdlib.walletFallback({providerEnv: providerEnv, WalletConnect: ALGO_WalletConnect, connector: connector }));
  const acc = await stdlib.getDefaultAccount();

  console.log(`Connected account from Reach is ${acc.getAddress()}`);
  console.log(`Reach account formatted is: ${stdlib.formatAddress(acc)}`);
}

app.post('/', function(request, response) {
  console.log('POST /');
  onPost(request);
  response.writeHead(200, {'Content-Type': 'text/html'});
});

const port = 3001;
app.listen(port);
console.log(`Listening at http://localhost:${port}`);
