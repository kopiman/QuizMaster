@Questions = React.createClass
  getInitialState: ->
    questions: @props.data
  getDefaultProps: ->
    questions: []
  render: ->
    React.DOM.div
      className: 'questions'
      React.DOM.table
        className: 'table table-bordered'
        React.DOM.thead null,
          React.DOM.tr null,
            React.DOM.th null, 'Content'
            React.DOM.th null, 'Answer'
            React.DOM.th null, 'Alternate Answer'
        React.DOM.tbody null,
          for question in @state.questions
            React.createElement Question, key: question.id, question: question
