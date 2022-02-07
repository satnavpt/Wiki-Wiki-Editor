import "./App.css";
import Editor from "./components/Editor.js";
import Feedback from "./components/Feedback";
import { Container, Row, Col } from "react-bootstrap";
import React from "react";

class App extends React.Component {
  constructor() {
    super();
    this.state = {
      editText: "",
      feedback: "dsfgfg",
    };

    this.handleInputValue = this.handleInputValue.bind(this);
    this.getFeedback = this.getFeedback(this);
  }

  handleInputValue(value) {
    this.setState({ editText: value });
    this.setState({ feedback: value });
    console.log(this.state.feedback);
  }

  getFeedback() {
    return this.state.feedback;
  }

  render() {
    return (
      <div className="App">
        <header className="App-header">
          <Container>
            <Row>
              <Col>
                <Editor handleInputValue={this.handleInputValue} />
              </Col>
              <Col>
                <Feedback feedback={this.state.feedback} />
              </Col>
            </Row>
          </Container>
        </header>
      </div>
    );
  }
}

export default App;
