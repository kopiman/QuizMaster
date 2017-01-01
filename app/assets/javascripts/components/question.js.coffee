@Question = React.createClass
  render: ->
    React.DOM.tr null,
      React.DOM.td null, @props.question.content
      React.DOM.td null, @props.question.answer
      React.DOM.td null, @props.question.alternate_answer
