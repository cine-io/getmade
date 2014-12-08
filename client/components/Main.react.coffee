# @cjsx React.DOM

React = require('react')
MainStore = require('../stores/MainStore')

getMainState = ->
  return MainStore.get()

Main = React.createClass({

  getInitialState: ->
    return getMainState()

  componentDidMount: ->
    MainStore.addChangeListener(this._onChange)

  componentWillUnmount: ->
    MainStore.removeChangeListener(this._onChange)

  render: ->
    return (
      <div className="container">
        <h1>{this.state.name}</h1>
        <h2>{this.state.description}</h2>
      </div>
    )

  _onChange: ->
    @setState(getMainState())

})

module.exports = Main
