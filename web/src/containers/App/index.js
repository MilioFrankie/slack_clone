// @flow
import React, { Component } from 'react';
import { BrowserRouter, Match, Miss } from 'react-router';
import Home from '../Home';
import NotFound from '../../components/NotFound';
import Login from '../Login';
import Signup from '../Signup';

class App extends Component {
  render() {
    return (
      <BrowserRouter>
        <div>
          <Match exactly pattern="/home" component={Home} />
          <Match exactly pattern="/login" component={Login} />
          <Match exactly pattern="/signup" component={Signup} />
          <Miss component={NotFound} />
        </div>
      </BrowserRouter>
    );
  }
}

export default App;
