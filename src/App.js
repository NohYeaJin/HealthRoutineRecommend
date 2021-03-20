import React, {Component} from 'react';
import Login from './Login';
import createAccount from './createAccount';
import {BrowserRouter, Route} from 'react-router-dom';
import Navbar from './main';
import './App.css';


class App extends Component {
  render(){
    return (
      <div>
        <Navbar></Navbar>
        <BrowserRouter>
          <Route path='/' exact component = {Login}></Route>
          <Route path='/createAccount' exact component ={createAccount} />
        </BrowserRouter>
      </div>
    );
  }
}

export default App;
