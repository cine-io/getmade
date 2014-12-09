# @cjsx React.DOM

React = require('react')
MainStore = require('../stores/MainStore')
Header = require('./Header.react')
Main = require('./Main.react')
Footer = require('./Footer.react')


getMainState = ->
  return MainStore.get()

GetMade = React.createClass({

  getInitialState: ->
    return getMainState()

  componentDidMount: ->
    MainStore.addChangeListener(this._onChange)

  componentWillUnmount: ->
    MainStore.removeChangeListener(this._onChange)

  render: ->
    return (
      <div>
        <div id="wrap">
          <Header />
          <Main />
        </div>
        <div id="push"></div>
        <Footer />
      </div>
    )

  _onChange: ->
    @setState(getMainState())

})

module.exports = GetMade
