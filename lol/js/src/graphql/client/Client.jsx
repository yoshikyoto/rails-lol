import ApolloClient from 'apollo-boost';

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

export default client;
