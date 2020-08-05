import React from 'react';
import { render } from '@testing-library/react';
import App from './App';

test('renders agenda', () => {
  const { getByText } = render(<App />);
  const locationLobby = getByText(/Lobby/i);
  expect(locationLobby).toBeInTheDocument();
});
