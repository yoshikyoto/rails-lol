// @flow
import React from 'react';
import ReactDOM from 'react-dom';

import ChampionListItem from './ChampionListItem';

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
