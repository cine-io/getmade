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
      <div id="main" className="container-fluid">
        <div className="tagline">
          <h2>Make Something Beautiful.</h2>
        </div>
      </div>
    )

  _onChange: ->
    @setState(getMainState())

})

module.exports = Main
