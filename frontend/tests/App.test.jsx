import { render, screen } from '@testing-library/react';
import App from '../src/App';

test('renders main heading', () => {
  render(<App />);
  const headingElement = screen.getByText(/Fullstack Application/i);
  expect(headingElement).toBeInTheDocument();
});
