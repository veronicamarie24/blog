import React, { Component } from 'react';
import ReactDOM from 'react-dom';

class App extends Component {
  constructor(props) {
      super(props);
      this.state = { apiResponse: '' };
  }

  callAPI() {
      fetch('http://localhost:9000/testAPI')
          .then(res => res.text())
          .then(res => this.setState({ apiResponse: res }));
  }

  componentDidMount() {
      this.callAPI();
  }

  render() {
    return (
      <div className="App">
        <p className="api-response">{this.state.apiResponse}</p>
        <p>Some other text.</p>
      </div>
    );
  }
}

ReactDOM.render(<App />, document.querySelector("#root"));
