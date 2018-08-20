// @flow
import React from 'react';
import ReactDOM from 'react-dom';
import ApolloClient from 'apollo-boost';
import gql from 'graphql-tag';

import ChampionListItem from './ChampionListItem';

const csrfToken = document.querySelector('meta[name=csrf-token]').getAttribute('content');
const client = new ApolloClient({
  request: (operation) => {
    operation.setContext({
      headers: {
        'X-CSRF-Token': csrfToken,
      },
    });
  },
});
const query = gql`
query {
  champion(id: Aatrox) {
    id
    name
    version
  }
}`;

client.query({ query })
  .then(console.log)
  .catch(console.error);

export class Render {
  constructor(targetId: string) {
    const target = document.getElementById(targetId);
    console.log(target);
    if (target != null) {
      this.render(target);
    }
  }

  render(target :HTMLElement) {
    ReactDOM.render(<ChampionListItem name="Aatrox" />, target);
  }
}

export default new Render('lol-app');
