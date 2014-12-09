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
      <div className="container-fluid">
        <h1>{this.state.name}</h1>
        <h2>{this.state.description}</h2>
        <p>
          Collaboratively administrate empowered markets via plug-and-play networks.
          Dynamically procrastinate B2C users after installed base benefits.
          Dramatically visualize customer directed convergence without revolutionary
          ROI.
        </p>
        <p>
          Efficiently unleash cross-media information without cross-media value.
          Quickly maximize timely deliverables for real-time schemas. Dramatically
          maintain clicks-and-mortar solutions without functional solutions.
        </p>
        <p>
          Completely synergize resource sucking relationships via premier niche
          markets. Professionally cultivate one-to-one customer service with robust
          ideas. Dynamically innovate resource-leveling customer service for state
          of the art customer service.
        </p>
      </div>
    )

  _onChange: ->
    @setState(getMainState())

})

module.exports = Main
