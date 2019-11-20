import React from 'react';
import logo from './logo.svg';
import './App.css';

function App() {
  return (
    <div className="App">
      <header className="App-header">
        <img src={logo} className="App-logo" alt="logo" />
        <p>
          Fathom5 is amazing!
        </p>
        <a
          className="App-link"
          href="https://fathom5.co"
          target="_blank"
          rel="noopener noreferrer"
        >
          Check us out
        </a>
      </header>
    </div>
  );
}

export default App;
