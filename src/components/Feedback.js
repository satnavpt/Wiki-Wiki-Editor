import "./Feedback.css";
import React from "react";
import { Card } from "react-bootstrap";

class Feedback extends React.Component {
  constructor(props) {
    super();
  }

  render() {
    return (
      <div className="Feedback" style={{ height: "81.5%" }}>
        <p className="my-1">Feedback</p>
        <Card style={{ height: "100%" }}>
          <Card.Body>
            {/* <Card.Text style={{ color: "black" }}>
              {this.props.feedback}
            </Card.Text> */}
            <div>{this.props.feedback}</div>
          </Card.Body>
        </Card>
      </div>
    );
  }
}

export default Feedback;
