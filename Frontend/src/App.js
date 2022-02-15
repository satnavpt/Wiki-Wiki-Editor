import "./App.css";
import { Container, Row, Col, Form, Button } from "react-bootstrap";
import React from "react";
import axios from "axios";
import JSSoup from "jssoup";

class App extends React.Component {
  constructor() {
    super();
    this.state = {
      articleName: "",
      articleText: "",
      feedback: "",
    };

    this.handleArticleTyping = this.handleArticleTyping.bind(this);
    this.handleArticleSubmit = this.handleArticleSubmit.bind(this);
    this.handleArticleNameTyping = this.handleArticleNameTyping.bind(this);
    this.handleArticleNameSubmit = this.handleArticleNameSubmit.bind(this);
  }

  handleArticleNameTyping(event) {
    this.setState({ articleName: event.target.value });
  }

  handleArticleNameSubmit(event) {
    console.log(this.state.articleName);
    var subject = this.state.articleName;
    const url = "https://en.wikipedia.org/w/api.php";
    const config = {
      params: {
        action: "parse",
        page: subject,
        format: "json",
        prop: "text",
        redirects: "",
      },
    };

    axios.get(url, config).then((response) => {
      const rawData = response["data"]["parse"]["text"]["*"];
      var soup = new JSSoup(rawData);
      var text = "";
      soup.findAll("p").forEach((p) => {
        text += p.text;
      });
      this.setState({ articleText: text });
    });

    event.preventDefault();
  }

  handleArticleTyping(event) {
    this.setState({ articleText: event.target.value });
  }

  handleArticleSubmit(event) {
    var editText = this.state.articleText;

    var xhr = new XMLHttpRequest();
    var url = "http://127.0.0.1:5000/";
    xhr.open("POST", url, true);
    xhr.setRequestHeader("Content-Type", "application/json");
    xhr.onreadystatechange = () => {
      if (xhr.readyState === 4 && xhr.status === 200) {
        var responseData = JSON.parse(xhr.responseText);
        this.setState({ feedback: responseData["feedback"] });
      }
    };
    var requestData = JSON.stringify({ text: editText });
    xhr.send(requestData);

    event.preventDefault();
  }

  render() {
    return (
      <div className="App">
        <header className="App-header">
          <Container>
            <Row>
              <Col>
                <Form onSubmit={this.handleArticleNameSubmit}>
                  <Form.Group
                    className="mb-3"
                    controlId="exampleForm0.ControlTextarea0"
                  >
                    <Form.Label>Search Article</Form.Label>
                    <Form.Control
                      as="textarea"
                      rows={1}
                      value={this.state.articleName}
                      onChange={this.handleArticleNameTyping}
                    />
                    <Button className="mt-3" type="submit">
                      Search
                    </Button>
                  </Form.Group>
                </Form>

                <Form onSubmit={this.handleArticleSubmit}>
                  <Form.Group
                    className="mb-3"
                    controlId="exampleForm1.ControlTextarea1"
                  >
                    <Form.Label>Enter Edit</Form.Label>
                    <Form.Control
                      as="textarea"
                      rows={11}
                      value={this.state.articleText}
                      onChange={this.handleArticleTyping}
                    />
                    <Button className="mt-3" type="submit">
                      Submit Edit
                    </Button>
                  </Form.Group>
                </Form>
              </Col>
              <Col>
                <p className="my-1">Feedback</p>
                <Form.Control
                  as="textarea"
                  rows={20}
                  value={this.state.feedback}
                  readOnly
                />
              </Col>
            </Row>
          </Container>
        </header>
      </div>
    );
  }
}

export default App;
