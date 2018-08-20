// @flow
import React from 'react';
import ReactDOM from 'react-dom';
import { ApolloProvider } from 'react-apollo';

import ChampionHistory from './component/ChampionHistory';
import client from './graphql/client/Client';


export class Render {
  constructor(targetId: string) {
    const target = document.getElementById(targetId);
    console.log(target);
    if (target != null) {
      this.render(target);
    }
  }

  render(target :HTMLElement) {
    ReactDOM.render(
      <ApolloProvider client={client}>
        <ChampionHistory />
      </ApolloProvider>,
      target,
    );
  }
}

export default new Render('lol-app');
