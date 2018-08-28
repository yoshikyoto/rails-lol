import gql from 'graphql-tag';

const ChampionHistoryQuery = gql`
query ChampionHistory($id: String!) {
  champion(id: $id) {
    _id
    name
    version
    stats {
      hp
      mp
      movespeed
      armor
      spellblock
      attackrange
      hpregen
      mpregen
      crit
      attackdamage
      attackspeed
    }
  }
}`;

export default ChampionHistoryQuery;
