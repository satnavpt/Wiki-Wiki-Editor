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
      originalText: "",
      language: "en-gb",
      feedback: "",
    };

    this.handleArticleTyping = this.handleArticleTyping.bind(this);
    this.handleArticleSubmit = this.handleArticleSubmit.bind(this);
    this.handleArticleNameTyping = this.handleArticleNameTyping.bind(this);
    this.handleArticleNameSubmit = this.handleArticleNameSubmit.bind(this);
    this.handleLanguageChange = this.handleLanguageChange.bind(this);
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
      const regex1 = /&#\d+;\w*&#\d+;/g;
      const regex2 = /&#\d+;/g;
      const regex3 = /\s+/g;
      const regex4 = /(\D)[.](\D)/g;
      // remove all the &#.. added in the article
      text = text.replaceAll(regex1, " ");
      text = text.replaceAll(regex2, "");
      text = text.replaceAll(regex4, "$1. $2");
      text = text.replaceAll(regex3, " ");
      text = text.replaceAll("clarification needed", "");
      text = text.replaceAll("citation needed", "");
      this.setState({ articleText: text });
      this.setState({ originalText: text });
    });

    event.preventDefault();
  }

  handleArticleTyping(event) {
    this.setState({ articleText: event.target.value });
  }

  handleLanguageChange(event) {
    this.setState({ language: event.target.value });
  }

  handleArticleSubmit(event) {
    var editText = this.state.articleText;
    var originalText = this.state.originalText;
    var lang = this.state.language;

    // clear feedback first
    this.setState({ feedback : "Loading..." });

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
    var requestData = JSON.stringify({
      text: editText,
      original_text: originalText,
      language: lang,
    });
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
                    <div key={`inline-radio`} className="mb-3">
                      <Form.Check
                        inline
                        // checked
                        label="English (UK)"
                        name="language"
                        type={"radio"}
                        id={`inline-radio-1`}
                        value="en-gb"
                        onChange={this.handleLanguageChange}
                        checked={this.state.language === "en-gb"}
                      />
                      <Form.Check
                        inline
                        label="English (US)"
                        name="language"
                        type={"radio"}
                        id={`inline-radio-2`}
                        value="en-us"
                        onChange={this.handleLanguageChange}
                        checked={this.state.language === "en-us"}
                      />
                    </div>
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
