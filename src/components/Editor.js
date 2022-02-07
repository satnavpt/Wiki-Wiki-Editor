import "./Editor.css";
import React from "react";
import { Button, Form } from "react-bootstrap";

class Editor extends React.Component {
  constructor(props) {
    super();
    this.state = { value: "" };

    this.handleChange = this.handleChange.bind(this);
    this.handleSubmit = this.handleSubmit.bind(this);
  }

  handleChange(event) {
    this.setState({ value: event.target.value });
  }

  handleSubmit(event) {
    // console.log(this.state.value);
    this.props.handleInputValue(this.state.value);
    event.preventDefault();
  }

  render() {
    return (
      <div className="Editor">
        <Form onSubmit={this.handleSubmit}>
          <Form.Group className="mb-3" controlId="exampleForm.ControlTextarea1">
            <Form.Label>Enter Edit</Form.Label>
            <Form.Control
              as="textarea"
              rows={20}
              value={this.state.text}
              onChange={this.handleChange}
            />
            <Button className="mt-3" type="submit">
              Submit Edit
            </Button>
          </Form.Group>
        </Form>
      </div>
    );
  }
}

export default Editor;
